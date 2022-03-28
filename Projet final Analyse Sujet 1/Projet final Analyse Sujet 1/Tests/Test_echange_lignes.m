% recuperation du chemin vers la fonction concernee
addpath("../");

% initialisation de la matrice A
A = [1 2 3 4; 5 6 7 8; 9 10 11 12];

% echange des lignes 1 et 3 de la matrice
[A] = echange_lignes(A, 1, 3)

% echange des lignes 2 et 1 de la nouvelle matrice
[A] = echange_lignes(A, 2, 1)

