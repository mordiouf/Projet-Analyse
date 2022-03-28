function [A_mineurs] = mineurs(A)

% recuperation des nombres de lignes et de colonnes
[m, n] = size(A);

% verifions si la matrice donnee est carree
if m == n
    
    % creation d'un vecteur compose uniquement de 0
    A_mineurs = zeros(1, m);

    % extraction et calcul des determinants des mineurs principaux
    for k = 1:m
        A_k = A([1:k], [1:k]);

        % affectation de l'element det(A_k) a l'element k 
        % du vecteur
        A_mineurs(k) = det(A_k);
    end
else
    disp('La matrice que vous avez fournie n''est pas carree')
end
end