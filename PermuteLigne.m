function A = PermuteLigne(A,Ligne1,Ligne2)
%Cette fonction permute deux lignes dans une matrice
n=size(A,1);
if (Ligne1<=n)&&(Ligne2<=n)&&(Ligne1~=Ligne2)
    fprintf('\n\tPermuntation des lignes %d et %d \n',Ligne1,Ligne2);
    X=A(Ligne1,:);
    A(Ligne1,:)=A(Ligne2,:);
    A(Ligne2,:)=X;
end
end

