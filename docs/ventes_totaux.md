## Champs totaux sur F_DOCENTETE

- DO_TotalHT = Somme des montants HT des lignes (PrixUnitaire * Qte ou PoidsNet - Remises)
- DO_TotalHTNet = TotalHT + Transport (DO_ValFrais si TotalHT < ValFranco) - Escompte
- DO_TotalTTC = TotalHTNet + Taxes
- DO_NetAPayer = TotalTTC - Acomptes
- DO_MontantRegle = Somme des reglements
