## Transformations des documents de ventes

### BC > PL (Bon de Commande vers Preparation de Livraison)
Attention: Apres avoir cree l'entete de PL, Sage va creer des records dans F_DOCREGL et F_DOCENTETEINFOS avant de mettre a jour le dernier numero de document dans F_DOCCURRENTPIECE.<br>
**Eviter donc les rollbacks sur F_DOCREGL et F_DOCENTETEINFOS !**

Sage ne cree pas de nouvelles lignes de documents, il change uniquement DO_Type et DO_Piece.<br>
Dans des triggers UPDATE, il est donc important d'eviter les rollback quand UPDATE([DO_Piece]) sous peine d'erreur lors du process de transformation.
