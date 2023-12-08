function X = LU(A, Entete);
n=size(A,1);
fprintf('\n\t MATRICE GLOBALE : \n\t--------------------');
A
L=eye(n)
U=zeros(n,n)
Touche=input(sprintf('UNE TOUCHE POUR CONTINUER-------'));
for k=1:n-1
    for i=k+1:n
        L(i,k)=A(i,k)/A(k,k);
    end
    for j=k:n
        U(k,j)=A(k,j);
    end
    for i=k+1:n
        for j=k:n
            A(i,j)=A(i,j)-L(i,k)*U(k,j);
        end
    end
end
U(n,n)=A(n,n);


% Pour faire résoudre le système Ax = b, on fait appel à cette fonction FactLU
% pour obtenir les matrices L et U puis on utilise le code suivant:
% Y=SolutionDescente(L,b)
% X=SolutionMontee(U,Y)
% ou bien on peut faire appel aux deux fonctions en même temps comme suit :
% X=SolutionMontee(U,SolutionDescente(L,b))

end


