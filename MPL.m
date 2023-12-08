function Ligne = MPL(A,k )
% Cette fonction renvoie le n° de ligne du meilleur élément par valeur
% absolue dans la colonne k.
Mx=abs(A(k,k));
N=size(A,1);
Ligne=k;
for i=k+1:N
    if Mx<abs(A(i,k))
        Mx=abs(A(i,k));
        Ligne=i;
    end
end

end

