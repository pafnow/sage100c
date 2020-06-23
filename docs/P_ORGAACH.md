## Table P_ORGAACH
Utilisee pour l'ordre des colonnes des documents des achats, Fichier / Parametres societe / Colonnage / Documents des achats.

### Signification des lignes
cbMarq|DocType|Abbreviation|DO_Type
------|-------|------------|-------
1|Demande d'achat|DA|10
2|Preparation de commande|PC|11
3|Bon de commande|BC|12
4|Bon de livraison|BC|13
5|Bon de retour|BR|14
6|Bon d'avoir financier|BA|15
7|Facture|FA|16
8|Facture de retour|FAR|16???
9|Facture d'avoir|FAA|16???
10|???||???
11|Facture comptabilisee|FAC|17

### Signification des champs D_Coche
NA = Not Available, value = 2 in table
Champ|Intitule|DA|PC|BC|BL|BR|BA|FA|FAR|FAA
-----|--------|--|--|--|--|--|--|--|---|---
D_Coche01|Reference article
D_Coche02|Reference fournisseur
D_Coche03|Reference client
D_Coche04|Designation
D_Coche05|Complement
D_Coche06|Reference
D_Coche07|Gamme 1
D_Coche08|Gamme 2
D_Coche09|Nº serie/lot|NA|||||NA|||NA
D_Coche10|Complement serie/lot|NA|||||NA|||NA
D_Coche11|P.U. HT
D_Coche12|P.U. TTC
D_Coche13|P.U. Devise
D_Coche14|P.U. bon de commande|NA|NA|||NA|NA
D_Coche15|Ressource
D_Coche16|Qte ressource
D_Coche17|Quantite
D_Coche18|Qte colisee
D_Coche19|Conditionnement
D_Coche20|Qte commandee||NA|||NA|NA||NA|NA
D_Coche21|Qte preparee|NA||NA||NA|NA||NA|NA
D_Coche22|Qte livree|NA|NA||NA|NA|NA
D_Coche23|Qte facturee|NA|NA|NA||||NA|NA|NA
D_Coche24|Reste a livrer|NA|NA|NA||NA|NA
D_Coche25|Poids net global
D_Coche26|Poids brut global
D_Coche27|Date livraison/fabrication
D_Coche28|Remise
D_Coche29|P.U. net
D_Coche30|P.U. net TTC
D_Coche31|P.U. net Devise
D_Coche32|Prix revient unitaire||||||NA
D_Coche33|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche34|CMUP||||||NA
D_Coche35|Montant HT
D_Coche36|Montant HT Devise
D_Coche37|Taxe 1
D_Coche38|Taxe 2
D_Coche39|Taxe 3
D_Coche40|Prix revient total||||||NA
D_Coche41|Montant TTC
D_Coche42|Collaborateur
D_Coche43|Depot
D_Coche44|Emplacement|NA|NA||||NA|||NA
D_Coche45|Affaire
D_Coche46|Date peremption|NA|||||NA|||NA
D_Coche47|Date fabrication|NA|||||NA|||NA
D_Coche48|Base calcul marge
D_Coche49|Marge en valeur
D_Coche50|Marge en %
D_Coche51|Nº client ligne|NA|NA|NA|NA|NA|NA
D_Coche52|Nº colis|NA|NA
D_Coche53|<i>(unknown, only for FAC)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche54|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche55|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche56|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche57|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche58|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche59|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche60|Colisage
D_Coche61|Unite de colisage
D_Coche62|Commentaires
D_Coche63|
D_Coche64|
D_Coche65|
D_Coche66|
D_Coche67|
D_Coche68|
D_Coche69|
D_Coche70|
D_Coche71|
D_Coche72|
D_Coche73|
D_Coche74|
D_Coche75|
D_Coche76|
D_Coche77|
D_Coche78|
D_Coche79|
D_Coche80|
D_Coche81|
D_Coche82|
D_Coche83|
D_Coche84|
D_Coche85|
D_Coche86|
D_Coche87|
D_Coche88|
D_Coche89|
D_Coche90|
D_Coche91|
D_Coche92|
D_Coche93|
D_Coche94|
D_Coche95|
D_Coche96|
D_Coche97|
D_Coche98|
D_Coche99|
D_Coche100|
D_Coche101|
D_Coche102|
D_Coche103|
D_Coche104|
D_Coche105|
D_Coche106|
D_Coche107|
D_Coche108|
D_Coche109|
D_Coche110|
D_Coche111|
D_Coche112|
D_Coche113|
D_Coche114|
D_Coche115|
D_Coche116|
D_Coche117|
D_Coche118|
D_Coche119|
D_Coche120|
D_Coche121|
D_Coche122|
D_Coche123|
D_Coche124|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche125|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
D_Coche126|Projet|NA|NA|NA||NA|NA||NA|NA
D_Coche127|Code taxe 1
D_Coche128|Code taxe 2
D_Coche129|Code taxe 3
D_Coche130|Qte devis|NA||||NA|NA||NA|NA
D_Coche131|Nº d'OF Gestion de production
D_Coche132|<i>(unknown)</i>|NA|NA|NA|NA|NA|NA|NA|NA|NA
