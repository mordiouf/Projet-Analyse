% recuperation du chemin vers la fonction concernee
addpath("../");

% Initialisation de la matrice A
A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2];

% Initialisation de la matrice b
b = [1; 1; 1; 1];

% Initialisation de la matrice epsilon pour le second test
epsilon_2 = 1e-6;

% calculons la solution a epsilon_2 pres pour voir le nombre
% d'iterations obtenu
[solution_approch, n_iters] = resolution_systeme(A, b, epsilon_2, max_iters)

% nous obtenons 63 pour nombre d'iterations maximal