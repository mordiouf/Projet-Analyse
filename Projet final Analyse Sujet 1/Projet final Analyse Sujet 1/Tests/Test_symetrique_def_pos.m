% recuperation du chemin vers la fonction concernee
addpath("../");

% Initialisation d'une matrice A
A = [1 1 2; 1 1 2; 2 2 2];

% verifions si elle est symetrique definie positive
[bool_1] = symetrique_def_pos(A, 0.001)

% Initialisation d'une autre matrice A
A = [1 2 3; 4 5 6; 7 8 9];

% verifions si elle est symetrique definie positive
[bool_2] = symetrique_def_pos(A, 0.002)

% donnons l'exemple d'une matrice symetrique definie positive
[bool_3] = symetrique_def_pos([1 -2; -2 6], 0.001)