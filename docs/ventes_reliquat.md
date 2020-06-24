## Gestion du reliquat

La generation du reliquat est proposee lors du passage en Bon de Livraison (BL). Le reliquat est rattache au document d'origine de la transformation (BC ou PL).

L'entete du document de reliquat contient un flag DO_Reliquat = 1. Si une transformation partielle de certaines lignes est effectuee et que l'une d'elle genere un reliquat, le document d'origine (BC ou PL) sera flaggue avec DO_Reliquat = 1, meme si certaines lignes du document n'ont pas encore tente d'etre transformees.

### TODO
- [ ] Reliquat partiel d'une ligne
