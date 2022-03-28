% recuperation du chemin vers la fonction concernee
addpath("../");

% Initialisation de la matrice A
A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2];

% Initialisation de la matrice b
b = [1; 1; 1; 1];

% Initialisation de la matrice epsilon pour le premier test
epsilon_1 = 1e-10;

% Initialisation du nombre maximal d'iterations
max_iters = 100;

% calculons la solution a epsilon_1 pres
[solution_approch, n_iters] = resolution_systeme(A, b, epsilon_1, max_iters)
