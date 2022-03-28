function [A] = echange_lignes(A, i, j)

% verifions si i et j sont des entiers
if char(class(i)) == 'double' & char(class(j)) == 'double'

    % recuperation du nombre de lignes de la matrice
    m = size(A, 1);
    
    % verifions d'abord si les lignes i et j ne sont
    % pas superieures au nombre de lignes de la matrice 
    % et qu'elles ne sont pas egales entre elles
    if i <= m & j <= m  & i > 0 & j > 0
    
        if i ~= j
            
            % echange des lignes 
            A([i, j], :) = A([j, i], :);
            
        else
            disp('Les deux lignes specifiees sont les memes')
        end
    
    else
        
        disp('L''une des lignes ou les deux lignes specifiees n''existe(nt) pas au sein de la matrice: erreur d''indexage')
    
    end

else

    disp('Les lignes founies ne sont pas tous des entiers')

end

end