1.3)
disponible => 1(oui),0(non);
date_ajout => format text (SQLite n'a pas de type date) ;
AUTOINCREMENT => gerer id automatique (=! saisie);
unique => eviter repition;
CHECK (prix >= 0) => condition;
1.4)
deux apostrophes pour affiche un seul  apostrophe parceque un seul  apostrophes fait separation
 1.6)
 1/L'exécution s'est terminée avec des erreurs.
Résultat : CHECK constraint failed: prix >= 0
2/L'exécution s'est terminée avec des erreurs.
Résultat : FOREIGN KEY constraint failed
3/
L'exécution s'est terminée avec des erreurs.
Résultat : FOREIGN KEY constraint failed

1.7)
contient les instructions CREATE TABLE des deux tables categories et produits 
1.8)
pour éviter les conflits