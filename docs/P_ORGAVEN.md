## Table P_ORGAVEN
Utilisee pour l'affichage des colonnes des lignes des documents des ventes, Fichier / Parametres societe / Colonnage / Documents des ventes.

### Signification des lignes
cbMarq|DocType|Abbreviation|DO_Type
------|-------|------------|-------
1|Devis|DE|0
2|Bon de commande|BC|1
3|Preparation de livraison|PL|2
4|Bon de livraison|BL|3
5|Bon de retour|BR|4
6|Bon d'avoir financier|BA|5
7|Facture|FA|6
8|Facture de retour|FAR|6???
9|Facture d'avoir|FAA|6???
10|???||???
11|Facture comptabilisee|FAC|7

### Signification des champs D_Coche
NA = Not Available, value = 2 in table
Champ|F_DOCLIGNE|Intitule|DE|BC|PL|BL|BR|BA|FA|FAR|FAA
-----|----------|--------|--|--|--|--|--|--|--|---|---
D_Coche01|AR_Ref|Reference article
D_Coche02|AF_RefFourniss|Reference fournisseur
D_Coche03|AC_RefClient|Reference client
D_Coche04|DL_Design|Designation
D_Coche05|???|Complement
D_Coche06|???|Reference
D_Coche07|AG_No1|Gamme 1
D_Coche08|AG_No2|Gamme 2
D_Coche09|<i>LS_NoSerie</i>|Nº serie/lot|NA|||||NA|||NA
D_Coche10|<i>LS_Complement</i>|Complement serie/lot|NA|||||NA|||NA
D_Coche11|DL_PrixUnitaire|P.U. HT
D_Coche12|DL_PUTTC|P.U. TTC
D_Coche13|DL_PUDevise|P.U. Devise
D_Coche14|DL_PUBC|P.U. bon de commande|NA|NA|||NA|NA
D_Coche15|RP_Code|Ressource
D_Coche16|DL_QteRessource|Qte ressource
D_Coche17|DL_Qte|Quantite
D_Coche18|EU_Qte???|Qte colisee
D_Coche19|EU_Enumere|Conditionnement
D_Coche20|DL_QteBC|Qte commandee||NA|||NA|NA||NA|NA
D_Coche21||Qte preparee|NA||NA||NA|NA||NA|NA
D_Coche22|DL_QteBL|Qte livree|NA|NA||NA|NA|NA
D_Coche23|DL_QteBL|Qte facturee|NA|NA|NA||||NA|NA|NA
D_Coche24||Reste a livrer|NA|NA|NA||NA|NA
D_Coche25|DL_PoidsNet|Poids net global
D_Coche26|DL_PoidsBrut|Poids brut global
D_Coche27|DO_DateLivr|Date livraison/fabrication
D_Coche28|<i>FNT_RemiseGlobale</i>|Remise
D_Coche29|<i>FNT_PrixUNet</i>|P.U. net
D_Coche30|<i>FNT_PrixUNetTTC</i>|P.U. net TTC
D_Coche31|<i>FNT_PrixUNetDevise</i>|P.U. net Devise
D_Coche32|DL_PrixRU|Prix revient unitaire||||||NA
D_Coche33|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche34|DL_CMUP|CMUP||||||NA
D_Coche35|DL_MontantHT|Montant HT
D_Coche36||Montant HT Devise
D_Coche37|DL_Taxe1|Taxe 1
D_Coche38|DL_Taxe2|Taxe 2
D_Coche39|DL_Taxe3|Taxe 3
D_Coche40||Prix revient total||||||NA
D_Coche41|DL_MontantTTC|Montant TTC
D_Coche42|CO_No|Collaborateur
D_Coche43|DE_No|Depot
D_Coche44||Emplacement|NA|NA||||NA|||NA
D_Coche45||Affaire
D_Coche46|<i>LS_Peremption</i>|Date peremption|NA|||||NA|||NA
D_Coche47|<i>LS_Fabrication</i>|Date fabrication|NA|||||NA|||NA
D_Coche48||Base calcul marge
D_Coche49||Marge en valeur
D_Coche50||Marge en %
D_Coche51||Nº client ligne|NA|NA|NA|NA|NA|NA
D_Coche52|DL_NoColis|Nº colis|NA|NA
D_Coche53|-|<i>(unknown, only for FAC)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche54|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche55|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche56|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche57|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche58|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche59|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche60|<i>(field name)</i>|Info libre 1 (Colisage)
D_Coche61|<i>(field name)</i>|Info libre 2 (Unite de colisage)
D_Coche62|<i>(field name)</i>|Info libre 3 (Commentaires)
D_Coche63|<i>(field name)</i>|Info libre 4
D_Coche64|<i>(field name)</i>|Info libre 5
D_Coche65|<i>(field name)</i>|Info libre 6
D_Coche66|<i>(field name)</i>|Info libre 7
D_Coche67|<i>(field name)</i>|Info libre 8
D_Coche68|<i>(field name)</i>|Info libre 9
D_Coche69|<i>(field name)</i>|Info libre 10
D_Coche70|<i>(field name)</i>|Info libre 11
D_Coche71|<i>(field name)</i>|Info libre 12
D_Coche72|<i>(field name)</i>|Info libre 13
D_Coche73|<i>(field name)</i>|Info libre 14
D_Coche74|<i>(field name)</i>|Info libre 15
D_Coche75|<i>(field name)</i>|Info libre 16
D_Coche76|<i>(field name)</i>|Info libre 17
D_Coche77|<i>(field name)</i>|Info libre 18
D_Coche78|<i>(field name)</i>|Info libre 19
D_Coche79|<i>(field name)</i>|Info libre 20
D_Coche80|<i>(field name)</i>|Info libre 21
D_Coche81|<i>(field name)</i>|Info libre 22
D_Coche82|<i>(field name)</i>|Info libre 23
D_Coche83|<i>(field name)</i>|Info libre 24
D_Coche84|<i>(field name)</i>|Info libre 25
D_Coche85|<i>(field name)</i>|Info libre 26
D_Coche86|<i>(field name)</i>|Info libre 27
D_Coche87|<i>(field name)</i>|Info libre 28
D_Coche88|<i>(field name)</i>|Info libre 29
D_Coche89|<i>(field name)</i>|Info libre 30
D_Coche90|<i>(field name)</i>|Info libre 31
D_Coche91|<i>(field name)</i>|Info libre 32
D_Coche92|<i>(field name)</i>|Info libre 33
D_Coche93|<i>(field name)</i>|Info libre 34
D_Coche94|<i>(field name)</i>|Info libre 35
D_Coche95|<i>(field name)</i>|Info libre 36
D_Coche96|<i>(field name)</i>|Info libre 37
D_Coche97|<i>(field name)</i>|Info libre 38
D_Coche98|<i>(field name)</i>|Info libre 39
D_Coche99|<i>(field name)</i>|Info libre 40
D_Coche100|<i>(field name)</i>|Info libre 41
D_Coche101|<i>(field name)</i>|Info libre 42
D_Coche102|<i>(field name)</i>|Info libre 43
D_Coche103|<i>(field name)</i>|Info libre 44
D_Coche104|<i>(field name)</i>|Info libre 45
D_Coche105|<i>(field name)</i>|Info libre 46
D_Coche106|<i>(field name)</i>|Info libre 47
D_Coche107|<i>(field name)</i>|Info libre 48
D_Coche108|<i>(field name)</i>|Info libre 49
D_Coche109|<i>(field name)</i>|Info libre 50
D_Coche110|<i>(field name)</i>|Info libre 51
D_Coche111|<i>(field name)</i>|Info libre 52
D_Coche112|<i>(field name)</i>|Info libre 53
D_Coche113|<i>(field name)</i>|Info libre 54
D_Coche114|<i>(field name)</i>|Info libre 55
D_Coche115|<i>(field name)</i>|Info libre 56
D_Coche116|<i>(field name)</i>|Info libre 57
D_Coche117|<i>(field name)</i>|Info libre 58
D_Coche118|<i>(field name)</i>|Info libre 59
D_Coche119|<i>(field name)</i>|Info libre 60
D_Coche120|<i>(field name)</i>|Info libre 61
D_Coche121|<i>(field name)</i>|Info libre 62
D_Coche122|<i>(field name)</i>|Info libre 63
D_Coche123|<i>(field name)</i>|Info libre 64
D_Coche124|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche125|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche126|PF_Num|Projet|NA|NA|NA||NA|NA||NA|NA
D_Coche127|DL_CodeTaxe1|Code taxe 1
D_Coche128|DL_CodeTaxe2|Code taxe 2
D_Coche129|DL_CodeTaxe3|Code taxe 3
D_Coche130|DL_QteDE|Qte devis|NA||||NA|NA||NA|NA
D_Coche131|DL_PieceOFProd|Nº d'OF Gestion de production
D_Coche132|-|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
