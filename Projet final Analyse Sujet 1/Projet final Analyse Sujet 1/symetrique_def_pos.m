function [bool] = symetrique_def_pos(A, epsilon)

% verifions si epsilon est positif et est assez petit 
if epsilon < 1 & epsilon > 0

    % affectation d'une variable booleenne a true 
    bool = true;    

    % verifions si la matrice est symetrique et definie positive
    % en utilisant les fonctions creees precedemment
    % ces fonctions doivent etre dans le meme repertoire
    % une matrice est dite definie positive si tous ces mineurs sont 
    % strictement positifs (ici superieurs a epsilon)
    if symetrique(A, epsilon)
        
        % Verifions si tous les mineurs de la matrice sont positifs
        mins = mineurs(A);
        for mineur = mins
            
            if mineur <= epsilon
                
                bool = false;
                
            end
            
        end
        
    else
        
        bool = false;
        disp('La matrice n''est pas symetrique')
        
    end

else

    disp('epsilon represente un seuil se trouvant entre 0 et 1')

end

end