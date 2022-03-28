% recuperation du chemin vers la fonction concernee
addpath("../");

% Initialisation de la matrice A
A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2]

% verifions si la suite converge pour tout x_0 a l'aide
% de la fonction convergence (se reférer à la fonction
% pour plus de détails)
[bool, result_limit, norm_result] = convergence_suite(A)