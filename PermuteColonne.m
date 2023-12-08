function A = PermuteColonne(A,Colonne1,Colonne2)
%Cette fonction permute deux Colonnes dans une matrice
m=size(A,2);
if (Colonne1<=m)&&(Colonne2<=m)&&(Colonne1~=Colonne2)
    fprintf('\n\tPermuntation des colonnes %d et %d \n',Colonne1,Colonne2);
    X=A(:,Colonne1);
    A(:,Colonne1)=A(:,Colonne2);
    A(:,Colonne2)=X;
end
end

