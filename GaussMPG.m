function X=GaussMPG(A,b )
% Cette fonction aaplique le principe de la méthode de Gauss avec échange
% de pivot en cas de picot nul.
%format rat;
clc;

%A=[2 4 -4 1;1 2 5 -3;1 2 -4 1;2 7 -4 9/2]
%b=[-8;31;-16;21]

fprintf(' Matrice augmentée :\n = = = = = = = = = =\n');
A=[A,b];
disp(A);
Touche=input(sprintf(' Une touche pour démarrer la Triangulation (Elimination de GAUSS)  . . .'));
% = = = = = Triangulation de la matrice = = = =
N=size(A,1);
MatInv=1;
OrdreComposante=[1:N];
for k=1:N-1  
    [Ligne Colonne]=MPG(A,k);
    fprintf('\n\t Meilleur pivot est A[%d,%d] = %f\n',Ligne,Colonne,A(Ligne,Colonne));
    if (Ligne~=0)&&(Ligne~=k)
        A=PermuteLigne(A,k,Ligne);
    end
    if (Colonne~=0)&&(Colonne~=k)
        A=PermuteColonne(A,k,Colonne);
        % Les trois lignes suivantes permettent de garder la trace des
        % permutations appliquées sur les colonnes afin de pouvoir
        % restituer l'ordre des composantes de X.
        a=OrdreComposante(k);
        OrdreComposante(k)=OrdreComposante(Colonne);
        OrdreComposante(Colonne)=a;
    end
    for i=k+1:N
        A(i,:)=A(i,:)-A(i,k)/A(k,k)*A(k,:);
    end
    disp(A);
    Touche=input('Une touche pour continuer ...');
end
if A(N,N)==0
    MatInv=0;
    sound(sin(1:3000));
    fprintf('\n\tDernier élément de la diagonale est nul ==> MATRICE NON INVERSIBLE !!\n');
    disp(A);
    Touche=input('      Une touche pour terminer . . .');
end

if MatInv==1    
    fprintf('\n MATRICE TRIANGULAIRE FINALE :\n = = = = = = = = = = = = = =\n');
    disp(A);
    fprintf('\n VOICI LA SOLUTION DU SYSTEME :\n = = = = = = = = = = = = = = = \n');
    X=SolutionMontee(A);
    X=RestitueOrdreComposantes(X,OrdreComposante);
    fprintf('\n\t X = ');disp(X');
    Touche=input('Une touche pour continuer ...');
else
    X=[];
end
end
