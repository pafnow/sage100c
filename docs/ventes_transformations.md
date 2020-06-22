## Transformations des documents de ventes

### BC > PL (Bon de Commande vers Preparation de Livraison)
Attention: Apres avoir cree l'entete de PL, Sage va creer des records dans F_DOCREGL et F_DOCENTETEINFOS avant de mettre a jour le dernier numero de document dans F_DOCCURRENTPIECE.<br>
**Eviter donc les rollbacks sur F_DOCREGL et F_DOCENTETEINFOS !**
