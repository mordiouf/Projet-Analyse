% recuperation du chemin vers la fonction concernee
addpath("../");

% initialisation de la matrice A
A = [1 2 3 4; 5 6 7 8; 9 10 11 12];

% ajoutons a la ligne 2, -5 fois la ligne 1
[A] = ajout_kfois_ligne(A, 2, 1, -5)

% ajoutons a la ligne 3, -9 fois la ligne 1
[A] = ajout_kfois_ligne(A, 3, 1, -9)