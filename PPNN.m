function i = PPNN(A,k)
% Cette fonction cherche le premier �l�ment non nul dans la colonne k
% elle retourne le n� de la ligne de cet �l�ment sion 0 si tous les
% �l�ments sont nuls.

N=size(A,1);
i=k;
while (A(i,k)==0)&&(i<=N)
    i=i+1;
end
if i>N
    i=0;
end
end

