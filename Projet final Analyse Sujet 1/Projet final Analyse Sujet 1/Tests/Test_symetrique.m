% recuperation du chemin vers la fonction concernee
addpath("../");

% Initialisation d'une matrice A
A = [1 1 2; 1 1 2; 2 2 2];

% verifions si elle est symetrique
[bool_1] = symetrique(A, 0.001)

% Initialisation d'une autre matrice A
A = [1 2 3; 4 5 6; 7 8 9];

% verifions si elle est aussi symetrique
[bool_2] = symetrique(A, 0.002)