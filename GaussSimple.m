function[ 25,B] =GaussSimple(Entene)
clc;
fprintf(' Matrice augmentée :\n = = = = = = = = = =\n');
A=[,B];
disp(A);
Touche=input(sprintf(' Une touche pour démarrer la Triangulation (Elimination de GAUSS)  . . .'));
N=size(A,1);
MatInv=1;
for k=1:N-1
    if A(k,k)~=0
        for i=k+1:N
            A(i,:)=A(i,:)-A(i,k)/A(k,k)*A(k,:);
        end
        A
    else
        MatInv=0;
        sound(sin(1:3000));
        fprintf('\n\n\tPIVOT NUL A[%d,%d] = 0 !!! VEUILLER UTILISER LA METHODE DE GAUSS AVEC ECHANGE !\n\n',k,k);
        disp(A);
        Touche=input('      Taper une touche pour revenir au menu principal . . .');
        X=[];
    end
end
if A(N,N)==0
    MatInv=0;
    sound(sin(1:3000));
    fprintf('\n\tDernier élément de la diagonale est nul ==> MATRICE NON INVERSIBLE !!\n');
    disp(A);
    Touche=input('      Une touche pour revenir au menu principal . . .');
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


