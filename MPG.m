function [Ligne Colonne]= MPG(A,k )
% Cette fonction renvoie les coordonnées du meilleur élément par valeur
% absolue dans une matrice A ou une partie d'une matrice A(k:n,k:n).
Mx=abs(A(k,k));
N=size(A,1);
for i=k:N
    for j=k:N;
        if Mx<abs(A(i,j))
            Mx=abs(A(i,j));
            Ligne=i;
            Colonne=j;
        end
    end
end
end
