
function [bool] = symetrique(A, epsilon)

% verifions si epsilon est positif
if epsilon > 0
    
    % recuperation des nombres de lignes et de colonnes
    [m, n] = size(A);
    
    % verifions si la matrice donnee est carree
    if m == n
    
        % affectation d'une variable booleenne a true 
        bool = true;
        
        % verifions si tous les elements de A et A_t se ressemble avec un seuil
        % epsilon
        for i = 1:m
    
            for j = 1:n
                
                % verifions si la valeur absolue de la difference entre un
                % l'element a_i,j et l'element a_j,i de A est inferieure
                % a epsilon et affectons la valeur false a bool si ce n'est
                % pas le cas
                if abs(A(i, j) - A(j, i)) >= epsilon
                
                    bool = false;
    
                end
    
            end
        
        end
    
    else
    
        disp('La matrice que vous avez fournie n''est pas carree')
    
    end

else

     disp('epsilon doit representer un seuil positif et different de 0')

end

end