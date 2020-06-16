CREATE TRIGGER dbo.ZZ1_F_COMPTET
   ON  dbo.F_COMPTET
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
  SET NOCOUNT ON;

  -- QUIT IF NESTED EXECUTION --
  IF TRIGGER_NESTLEVEL()<>1 AND NOT UPDATE([CT_Surveillance]) RETURN; --//TODO: Change CT_Surveillance use with session variable?
  
  -- VERIF SESSION Sage --
  DECLARE @IsSage bit = CASE WHEN EXISTS(SELECT '' FROM cbUserSession WHERE cbSession = @@SPID) THEN 1 ELSE 0 END;
  IF (@IsSage = 0 AND APP_NAME() LIKE 'Sage 100%') --//TODO: Add in TRY/CATCH block or not?
  BEGIN
    RAISERROR('Le service SQL a été redémarré. Vous devez fermer puis re-ouvrir Sage.',17,1);
    ROLLBACK;
    RETURN;
  END;

  -- CountRec, SqlAction --
  DECLARE @CountIns int = (SELECT COUNT('') FROM inserted);
  DECLARE @CountDel int = (SELECT COUNT('') FROM deleted);
  DECLARE @CountRec int = CASE WHEN @CountIns >= @CountDel THEN @CountIns ELSE @CountDel END;
  IF (@CountRec = 0) RETURN; --Exit quand la clause WHERE ne ramène aucun enregistrement
  DECLARE @SqlAction varchar(6) = CASE WHEN @CountIns = 0 AND @CountDel = 0 THEN '(NONE)'
                                       WHEN @CountIns <>0 AND @CountDel = 0 THEN 'INSERT'
                                       WHEN @CountIns <>0 AND @CountDel <>0 THEN 'UPDATE'
                                       WHEN @CountIns = 0 AND @CountDel <>0 THEN 'DELETE' 
                                  ELSE '' END;

  -- TEMP TABLES inserted AND deleted --
  SELECT * INTO #inserted FROM inserted;
  SELECT * INTO #deleted  FROM deleted;

  DECLARE @ErrorMsg    varchar(MAX) = '';
  DECLARE @CT_Num      varchar(MAX) = '';
  DECLARE @CT_Intitule varchar(MAX) = '';
  DECLARE @SqlTable    varchar(MAX) = (SELECT OBJECT_NAME(parent_object_id) FROM sys.objects WHERE sys.objects.name = OBJECT_NAME(@@PROCID) AND SCHEMA_NAME(sys.objects.schema_id) = OBJECT_SCHEMA_NAME(@@PROCID));

  BEGIN TRY
    -- DATA CLEANSING + DEFAULT VALUES --
    -------------------------------------
    UPDATE #inserted
       SET CT_Intitule    = TRIM(REPLACE(IsNull(CT_Intitule,''),'"',''))   --Parfois l'importation depuis Excel crée des double quotes autour du champ
         , CT_Contact     = TRIM(IsNull(CT_Contact,''))
         , CT_Adresse     = TRIM(REPLACE(IsNull(CT_Adresse,''),'"',''))    --Parfois l'importation depuis Excel crée des double quotes autour du champ
         , CT_Complement  = TRIM(REPLACE(IsNull(CT_Complement,''),'"','')) --Parfois l'importation depuis Excel crée des double quotes autour du champ
         , CT_Pays        = TRIM(IsNull(CT_Pays,''))
         , CT_Ape         = TRIM(UPPER(IsNull(CT_Ape,'')))
         , CT_Identifiant = TRIM(UPPER(IsNull(CT_Identifiant,'')))
         , CT_Siret       = TRIM(UPPER(IsNull(CT_Siret,'')))
         , CT_Commentaire = CASE WHEN @SqlAction='INSERT' AND CT_Commentaire LIKE '*%' THEN '' ELSE '*' END + TRIM(IsNull(CT_Commentaire,''))
    ;

    -- DATA INTEGRITY --
    --------------------
    --B) Err_CompteT_00_Fatal
    DECLARE @MyPays varchar(MAX) = (SELECT IsNull(MIN(D_Pays),'') FROM P_DOSSIER);
    WITH _errors AS (
      SELECT CT_Num, CT_Intitule, CT_Type, MyError = CASE 
             WHEN @SqlAction = 'DELETE' THEN ''
           --[CT_Qualite]=? signifie Help
             WHEN UPDATE(CT_Commentaire) AND LEFT(CT_Commentaire,1)='?'   
             THEN 'CP=CodePostal, VL=Ville, RG=Region, TM=TelephoneMobile, TF=TelephoneFixe(Telecopie), RP=Représentant, CC=CatégorieComptable'+CHAR(13)+CHAR(10)
                + 'A écrire au format concaténé comme suit: VL.RG.TM.TF'
           --[CT_Type]/[CT_Prospect]
             WHEN UPDATE(CT_Type) AND CT_Type<0 OR CT_Type>3       THEN '[CT_Type]: Valeur erronée'
             WHEN UPDATE(CT_Prospect) AND CT_Prospect NOT IN (0,1) THEN '[CT_Prospect]: Valeur erronée'
--           WHEN UPDATE(CT_Prospect) AND CT_Prospect = 1          THEN 'La création de prospect n''est pas autorisée à ce jour'
--           WHEN UPDATE(CT_Type) AND CT_Type<>0 AND _._.fn_IsUserIT(@UserName)=0 THEN 'Seuls les informaticiens peuvent créer ou mettre à jour des tiers autre que Clients (Exemple: Fournisseurs, salariés)'
--           WHEN UPDATE(CT_Type) AND CT_Type=0 AND CT_Pays<>@MyPays AND _._.fn_IsUserIT(@UserName)=0 THEN 'Seuls les informaticiens peuvent créer ou mettre à jour les Clients situés en dehors de '+@MyPays
           --[CT_Num]/[CT_Pays]
             WHEN UPDATE(CT_Num)  AND CT_Num  = ''  THEN 'Le champ [CT_Num] (Code Tiers) est obligatoire'
             WHEN UPDATE(CT_Pays) AND CT_Pays = ''  THEN 'Le champ [CT_Pays] est obligatoire'
             WHEN UPDATE(CT_Num) AND CT_Type=0 AND CT_Pays =@MyPays AND CT_Num NOT LIKE LEFT(@MyPays,1)+'[0-9][0-9][0-9][0-9]' THEN 'Le Code Client doit être au format '+LEFT(@MyPays,1)+'1234 pour les Clients du Pays '+@MyPays
             WHEN UPDATE(CT_Num) AND CT_Type=0 AND CT_Pays<>@MyPays AND CT_Num     LIKE LEFT(@MyPays,1)+'[0-9][0-9][0-9][0-9]' THEN 'Seuls les Cliens du Pays '+@MyPays+' peuvent être au format '+LEFT(@MyPays,1)+'1234'
           --[CG_NumPrinc]/[CT_Pays]
             WHEN UPDATE(CG_NumPrinc) AND CT_Type=0 AND CT_Prospect=0 AND /*_._.fn_IsUserIT(@UserName)=0 AND*/ @SqlAction='INSERT' AND CT_Pays=@MyPays AND @MyPays='España'AND CG_NumPrinc<>'430000000'  
             THEN 'Seuls les informaticiens peuvent créer les Clients Groupe ou Export situés en dehors du Compte Général 430000000 en España.'
             WHEN UPDATE(CG_NumPrinc) AND CT_Type=0 AND CT_Prospect=0 AND /*_._.fn_IsUserIT(@UserName)=0 AND*/ @SqlAction='INSERT' AND CT_Pays=@MyPays AND @MyPays='France'AND CG_NumPrinc<>'4110000'    
             THEN 'Seuls les informaticiens peuvent cléer les Clients Groupe ou Export situés en dehors du Compte Général 4110000 en France.'
           --Fast Upload: Pass without Checking if LEFT(@CT_Commentaire,1)='*' => pas de Blocage à part le minimum (code client, pays, etc)
             WHEN LEFT(CT_Commentaire,1)='*'   THEN ''
           --[CT_CodePostal]/[CT_Ville]
             WHEN CT_CodePostal='' AND CT_Ville='' THEN 'Vous devez saisir au moins l''un des deux champs entre [CT_CodePostal] ou [CT_Ville]'
             WHEN '.'+CT_Commentaire+'.' LIKE '%.CP.%' AND '.'+CT_Commentaire+'.' LIKE '%.VL.%'
             THEN 'Vous ne pouvez pas désactiver simultanéement le [CT_CodePostal] et la [CT_Ville]' --Mais On programmera quand même comme si cela était autorisé
             WHEN (CT_CodePostal='' OR '.'+CT_Commentaire+'.' LIKE '%.CP.%') AND (CT_Ville='' OR '.'+CT_Commentaire+'.' LIKE '%.VL.%')
             THEN 'Vous ne pouvez pas faire de désactivations croisées qui inibent simultanéement le [CT_CodePostal] et la [CT_Ville]'
             ELSE '' END
        FROM #inserted ins
    ) 
    SELECT TOP 1 @CT_Num = IsNull(CT_Num,''), @CT_Intitule = CT_Intitule, @ErrorMsg = IsNull(MyError,'')
      FROM _errors
     WHERE MyError <> ''
     ORDER BY CT_Num;
    IF (IsNull(@ErrorMsg,'') <> '') RAISERROR(@ErrorMsg,17,1);

    --C-04c) Reject si Doubon de [CT_Siret] 
    IF @SqlAction='INSERT' OR (@SqlAction='UPDATE' AND (UPDATE(CT_Siret) OR UPDATE(CT_Prospect)))
    BEGIN
      SELECT TOP 1 @CT_Num = IsNull(ins.CT_Num,'')
           , @CT_Intitule = ins.CT_Intitule
           , @ErrorMsg = 'Doublon [CT_Siret]='+IsNull(ins.CT_Siret,'') +CHAR(13)+CHAR(10)
                       + 'Doublon avec '+IsNull(dup.CT_Num,'')+' '+IsNull(dup.CT_Intitule,'')
        FROM #inserted ins
        JOIN F_COMPTET dup ON dup.CT_Siret = ins.CT_Siret AND dup.CT_Type = 0 --Client only
       WHERE ins.CT_Type = 0 AND IsNull(ins.CT_Siret,'') <> ''
         AND dup.CT_Num <> ins.CT_Num
       ORDER BY ins.CT_Num;
      IF (IsNull(@ErrorMsg,'') <> '') RAISERROR(@ErrorMsg,17,1);
    END;

    -- UPDATE @SqlTable --
    ----------------------
    UPDATE F_COMPTET
       SET CT_Intitule    = ins.CT_Intitule
         , CT_Contact     = ins.CT_Contact
         , CT_Adresse     = ins.CT_Adresse
         , CT_Complement  = ins.CT_Complement
         , CT_Pays        = ins.CT_Pays
         , CT_Ape         = ins.CT_Ape
         , CT_Identifiant = ins.CT_Identifiant
         , CT_Siret       = ins.CT_Siret
         , CT_Commentaire = ins.CT_Commentaire
      FROM F_COMPTET t
      JOIN #inserted ins ON ins.cbMarq = t.cbMarq;
  END TRY
  BEGIN CATCH
    -- Rollback
    IF (XACT_STATE() <> 0) ROLLBACK;

    -- Save error message to be thrown later
    SET @ErrorMsg = CONCAT('Erreur ',@SqlTable,': ',@CT_Num,' - ',@CT_Intitule,CHAR(13)+CHAR(10),REPLACE(ERROR_MESSAGE(),'%','‰'));
    --THROW; --Do not throw exception here since we might want to do some post-rollback processing below
  END CATCH;

  -- POST ROLLBACK PROCESSING -- !CB_SendMessage cannot be used together with RAISERROR!
  ------------------------------
  --EXEC CB_SendMessage @@SPID, 'Coucou'; --//TODO: Doesn't work because Sage enter in a loop of error message display
  --INSERT INTO _ VALUES (@ErrorMsg); --Working properly

  -- CLEANING TEMP TABLES --
  IF (OBJECT_ID('tempdb..#inserted') IS NOT NULL) DROP TABLE #inserted;
  IF (OBJECT_ID('tempdb..#deleted')  IS NOT NULL) DROP TABLE #deleted;

  -- THROW ERROR IF EXISTS --
  IF (IsNull(@ErrorMsg,'') <> '') RAISERROR(@ErrorMsg,17,1);
END
