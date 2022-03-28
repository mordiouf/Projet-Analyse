% recuperation du chemin vers la fonction concernee
addpath("../");

% testons la fonction mineurs_non_nuls sur des matrices 
% simples
[bool_1] = mineurs_non_nuls([1 1 2; 1 1 2; 2 2 2], 0.002)

[bool_2] = mineurs_non_nuls([1 1 1; 1 1 2; 1 2 3], 0.002)

[bool_3] = mineurs_non_nuls([1 1 1; 1 2 2; 1 2 3], 0.001)

