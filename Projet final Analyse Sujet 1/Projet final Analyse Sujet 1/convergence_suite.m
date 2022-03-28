function [bool, result_limit, norm_result] = convergence_suite(A)

% apres calcul on sait que la suite converge

% Preuve :

% determinons la matrice diagonale M
M = diag(diag(A));

% determinons la matrice N = M - A
N = M - A;

% Soit le vecteur erreur e^(n),
% notons B la multiplication matricielle entre l'inverse de M et N
% pour que la suite soit convergente ou que l'erreur soit minimale il faut
% que la limite de B^n, si n tend vers l'infini, soit egale a la matrice 
% nulle ou autrement dit, la limite de la norme de B^n doit etre egale a 
% 0 si n tend vers l'infini.
B = inv(M)*N;

% affectation d'une valeur booleenne
bool = true;

% initialisons le symbole n
syms n;

% verifions si B^n tend vers la matrice nulle si n tend vers Inf
result_limit = limit(B^n, n, Inf);

norm_result = norm(result_limit)

if norm_result ~= 0
    
    bool = false;
    disp('La norme de B^n ne tend pas vers 0 quand n tend vers l''infini. Donc la suite n''est pas convergente !!')
    
else
    disp('La norme de B^n tend vers 0 quand n tend vers l''infini. Donc la suite est convergente !!')    
end

end