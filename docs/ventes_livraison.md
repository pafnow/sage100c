## Gestion de la livraison et des frais

### Calcul frais de transports
Franco
- Mode = Montant forfaitaire (DO_TypeFranco=0) <br>
  => montant fixe a partir duquel les frais de ports seront gratuits
- Mode = Quantite            (DO_TypeFranco=1)<br>
  => nombre de produits a partir duquel les frais de ports seront gratuits
- Valeur (DO_ValFranco)
- Type tarif = HT  (DO_TypeLigneFranco=0) <br>
  => Utilise DO_TotalHT  (avant transport) >= DO_ValFranco
- Type tarif = TTC (DO_TypeLigneFranco=1) <br>
  => Utilise DO_TotalTTC (avant transport) >= DO_ValFranco

Frais
- Base = Montant forfaitaire (DO_TypeFrais=0)<br>
  => DO_ValFrais = montant fixe renseigne dans Valeur
- Base = Quantite            (DO_TypeFrais=1)<br>
  => DO_ValFrais = nombre de produits * Valeur ou Grille
- Base = Poids net           (DO_TypeFrais=2)<br>
  => DO_ValFrais = poids net total * Valeur ou Grille
- Base = Poids brut          (DO_TypeFrais=3)<br>
  => DO_ValFrais = poids brut total * Valeur ou Grille
- Valeur (DO_ValFrais)
- Type tarif = HT  (DO_TypeLigneFrais=0) <br>
  => DO_ValFrais est HT donc ajoute a DO_TotalHTNet tel quel
- Type tarif = TTC (DO_TypeLigneFrais=1) <br>
  => DO_ValFrais est TTC donc ajoute a DO_TotalHTNet apres retrait des taxes
