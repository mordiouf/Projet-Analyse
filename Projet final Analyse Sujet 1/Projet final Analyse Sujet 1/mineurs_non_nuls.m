function [bool] = mineurs_non_nuls(A, epsilon)

% recuperation des nombres de lignes et de colonnes
[m, n] = size(A);

% verifions si la matrice donnee est carree
if m == n
    
    % recuperation des mineurs principaux de la matrice avec la fonction
    % mineurs
    A_mineurs = mineurs(A);
    
    % affectation d'une variable booleenne a true 
    bool = true;

    % verifions si tous les mineurs principaux sont inferieurs a epsilon
    % et affectons la valeur booleenne false a bool si c'est pas le cas
    for min = A_mineurs
       
        if abs(min) <= epsilon
          
            bool = false;
        
        end

    end

else

    disp('La matrice que vous avez fournie n''est pas carree')

end

end
