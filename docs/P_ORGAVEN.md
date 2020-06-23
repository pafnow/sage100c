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
D_Coche09||Nº serie/lot|NA|||||NA|||NA
D_Coche10||Complement serie/lot|NA|||||NA|||NA
D_Coche11||P.U. HT
D_Coche12||P.U. TTC
D_Coche13||P.U. Devise
D_Coche14||P.U. bon de commande|NA|NA|||NA|NA
D_Coche15||Ressource
D_Coche16||Qte ressource
D_Coche17||Quantite
D_Coche18||Qte colisee
D_Coche19||Conditionnement
D_Coche20||Qte commandee||NA|||NA|NA||NA|NA
D_Coche21||Qte preparee|NA||NA||NA|NA||NA|NA
D_Coche22||Qte livree|NA|NA||NA|NA|NA
D_Coche23||Qte facturee|NA|NA|NA||||NA|NA|NA
D_Coche24||Reste a livrer|NA|NA|NA||NA|NA
D_Coche25||Poids net global
D_Coche26||Poids brut global
D_Coche27||Date livraison/fabrication
D_Coche28||Remise
D_Coche29||P.U. net
D_Coche30||P.U. net TTC
D_Coche31||P.U. net Devise
D_Coche32||Prix revient unitaire||||||NA
D_Coche33||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche34||CMUP||||||NA
D_Coche35||Montant HT
D_Coche36||Montant HT Devise
D_Coche37||Taxe 1
D_Coche38||Taxe 2
D_Coche39||Taxe 3
D_Coche40||Prix revient total||||||NA
D_Coche41||Montant TTC
D_Coche42||Collaborateur
D_Coche43||Depot
D_Coche44||Emplacement|NA|NA||||NA|||NA
D_Coche45||Affaire
D_Coche46||Date peremption|NA|||||NA|||NA
D_Coche47||Date fabrication|NA|||||NA|||NA
D_Coche48||Base calcul marge
D_Coche49||Marge en valeur
D_Coche50||Marge en %
D_Coche51||Nº client ligne|NA|NA|NA|NA|NA|NA
D_Coche52||Nº colis|NA|NA
D_Coche53||<i>(unknown, only for FAC)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche54||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche55||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche56||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche57||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche58||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche59||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche60||Info libre 1 (Colisage)
D_Coche61||Info libre 2 (Unite de colisage)
D_Coche62||Info libre 3 (Commentaires)
D_Coche63||Info libre 4
D_Coche64||Info libre 5
D_Coche65||Info libre 6
D_Coche66||Info libre 7
D_Coche67||Info libre 8
D_Coche68||Info libre 9
D_Coche69||Info libre 10
D_Coche70||Info libre 11
D_Coche71||Info libre 12
D_Coche72||Info libre 13
D_Coche73||Info libre 14
D_Coche74||Info libre 15
D_Coche75||Info libre 16
D_Coche76||Info libre 17
D_Coche77||Info libre 18
D_Coche78||Info libre 19
D_Coche79||Info libre 20
D_Coche80||Info libre 21
D_Coche81||Info libre 22
D_Coche82||Info libre 23
D_Coche83||Info libre 24
D_Coche84||Info libre 25
D_Coche85||Info libre 26
D_Coche86||Info libre 27
D_Coche87||Info libre 28
D_Coche88||Info libre 29
D_Coche89||Info libre 30
D_Coche90||Info libre 31
D_Coche91||Info libre 32
D_Coche92||Info libre 33
D_Coche93||Info libre 34
D_Coche94||Info libre 35
D_Coche95||Info libre 36
D_Coche96||Info libre 37
D_Coche97||Info libre 38
D_Coche98||Info libre 39
D_Coche99||Info libre 40
D_Coche100||Info libre 41
D_Coche101||Info libre 42
D_Coche102||Info libre 43
D_Coche103||Info libre 44
D_Coche104||Info libre 45
D_Coche105||Info libre 46
D_Coche106||Info libre 47
D_Coche107||Info libre 48
D_Coche108||Info libre 49
D_Coche109||Info libre 50
D_Coche110||Info libre 51
D_Coche111||Info libre 52
D_Coche112||Info libre 53
D_Coche113||Info libre 54
D_Coche114||Info libre 55
D_Coche115||Info libre 56
D_Coche116||Info libre 57
D_Coche117||Info libre 58
D_Coche118||Info libre 59
D_Coche119||Info libre 60
D_Coche120||Info libre 61
D_Coche121||Info libre 62
D_Coche122||Info libre 63
D_Coche123||Info libre 64
D_Coche124||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche125||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche126||Projet|NA|NA|NA||NA|NA||NA|NA
D_Coche127||Code taxe 1
D_Coche128||Code taxe 2
D_Coche129||Code taxe 3
D_Coche130||Qte devis|NA||||NA|NA||NA|NA
D_Coche131||Nº d'OF Gestion de production
D_Coche132||<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
