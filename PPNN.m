function i = PPNN(A,k)
% Cette fonction cherche le premier élément non nul dans la colonne k
% elle retourne le n° de la ligne de cet élément sion 0 si tous les
% éléments sont nuls.

N=size(A,1);
i=k;
while (A(i,k)==0)&&(i<=N)
    i=i+1;
end
if i>N
    i=0;
end
end

