function X=GaussPPNN(A,b )
% Cette fonction aaplique le principe de la méthode de Gauss avec échange
% de pivot en cas de picot nul.
%format rat;
clc;

A=[2 4 -4 1;1 2 5 -3;1 2 -4 1;2 7 -4 9/2]
b=[-8;31;-16;21]

fprintf(' Matrice augmentée :\n = = = = = = = = = =\n');
A=[A,b];
disp(A);
Touche=input(sprintf(' Une touche pour démarrer la Triangulation (Elimination de GAUSS)  . . .'));
% = = = = = Triangulation de la matrice = = = =
N=size(A,1);
MatInv=1;
for k=1:N-1
    if A(k,k)==0
        fprintf('\n\t Pivot nul : A[%d,%d] = 0 ',k,k);
        Ligne=PPNN(A,k);
        if Ligne~=0
            A=PermuteLigne(A,k,Ligne);
        end
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
    fprintf('\n\t X = ');disp(X');
    Touche=input('Une touche pour continuer ...');
else
    X=[];
end
end
