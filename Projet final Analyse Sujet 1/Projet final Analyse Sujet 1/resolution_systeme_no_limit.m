function [solution_approch, n_iters] = resolution_systeme_no_limit(A, b, epsilon)
% initialisation de x_n a n = 0
x_n = b;

% initialisation du nombre d'iterations
n_iters = 0;

% verifions si la matrice A est une matrice carree
[m,n] = size(A)
if m == n

    % initialisation de la matrice diagonale M
    M = diag(diag(A));

    % verifions d'abord si M est inversible
    if det(M) ~= 0

        % initialisation de la matrice N = M - A
        N = M - A;

        % epsilon doit etre inferieur au vecteur residu r_n = b - A*x_n
        % initialisation du vecteur residu
        r_n = b - A*x_n;

        % calcul du test d'arret
        test_arret = norm(r_n)/norm(b);

        % on applique l'algorithme de jacobi tant que le test d'arret
        % est inferieur au seuil 
        while test_arret > epsilon
            % application de la formule de jacobi
            x_n = inv(M)*(N*x_n + b);

            % recalcule du vecteur residu
            r_n = b - A*x_n;

            % recalcule du test d'arret
            test_arret = norm(r_n)/norm(b);

            % incrementation du nombre d'iterations
            n_iters = n_iters + 1;
        end

    else

        disp('M n''est pas inversible')

    end

else
    
    disp('La matrice A n''est pas une matrice carree')
    
end

% affectation de la solution approchee
solution_approch = x_n;

end