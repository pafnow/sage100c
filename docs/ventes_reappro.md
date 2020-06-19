## Indisponibilite de stock et reappro
Quand un article est indisponible en stock, Sage affiche une popup d'indisponibilite de stock afin de pouvoir placer une commande d'achat fournisseur ou un ordre de fabrication.

### Tracabilite document de vente / achat
Sage gere la tracabilite achat/vente des articles vendus en contremarque via la table F_CMLIEN.<br>
Toutefois, la vente en contremarque oblige a ce que toute vente genere un achat correspondant lie les process de livraisons ensemble ([Documentation Contremarque](https://sage100.online-help.sage.fr/100cv2/wp-static-content/static-pages/fr_FR/gescom100/Menu_Traitement/Introduction_%C3%A0_la_fonction_Contremarque.htm)).
Pour effectuer un tracage personnalise via des triggers, voici comment Sage semble fonctionner:
- aucune difference notable sur les lignes d'une preparation de commande d'achat entre une ligne de reappro et une ligne entree manuellement
- quand une ligne est entree manuellement via le formulaire Sage, un verrou est place
- quand une ligne est entree automatiquement via le reappro, si un verrou existe sur la commande d'achat ou sera ajoute la ligne:
  - soit il est place par quelqu'un d'autre <br>
  => Sage affiche un message d'erreur et bloque l'utilisateur sur la popup d'indisponibilite de stock
  - soit il est place par l'utilisateur lui-meme (preparation de commande ouverte separarement)<br>
  => Sage deverrouille et ferme la fenetre de preparation de commande
- par consequent, regarder la table cbLock lors de l'ajout d'une ligne de preparation de commande d'achat permet de savoir si l'on est dans un reassort via la popup d'indisponibilite de stock ou dans une saisie manuelle
