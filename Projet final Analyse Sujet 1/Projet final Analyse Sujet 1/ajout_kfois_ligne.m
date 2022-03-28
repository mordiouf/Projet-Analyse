function [A] = ajout_kfois_ligne(A, i, j, k)

% verifions si i et j sont des entiers
if char(class(i)) == 'double' & char(class(j)) == 'double'

    % recuperation du nombre de lignes de la matrice
    m = size(A, 1);
    
    % verifions d'abord si les lignes i et j ne sont
    % pas superieures au nombre de lignes de la matrice 
        
    if i <= m & j <= m & i > 0 & j > 0

        % Copions A pour faciliter l'ajout
        A_change = A;

        % on additionne a la ligne i k fois la ligne j et on la affecte la
        % nouvelle valeur obtenue
        A(i,:) = A_change(i,:) + A_change(j, :)*k;

    else

        disp('L''une des lignes ou les deux lignes specifiees n''existe(nt) pas au sein de la matrice: erreur d''indexage')
    
    end

else

    disp('Les lignes founies ne sont pas tous des entiers')

end

end