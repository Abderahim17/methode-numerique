functionX = GaussJordan(A, b, Entete);

format rat;
clc;

fprintf(' Matrice Initiale augment�e :\n = = = = = = = = = =\n');
disp(A);
A=[A b];
fprintf('\tVoici la matrice augment�e :\n');
disp(A);
[N1,N2]=size(A);

EchelonnementJuste=1; % utilis�e pour connaitre que le pivot n'est pas nul

% = = = = = Echelonnement de la matrice (Matrice �chelon�e r�duite  = = = =

%XX=1:N1; % XX utilis� pour restaurer l'ordre des Xi en cas de permutation de colonnes

for k=1:N1
    if A(k,k)==0
        
        EchelonnementJuste=0;
    else
        % = = = Division des �l�ments de la ligne k par le pivot = = =;
        Pivot=A(k,k);
        for j=1:N2
            A(k,j)=A(k,j)/Pivot;
        end
        % = = = Echelonnement de la matrice = = =;
        for i=1:N1
            if i~=k           
                
                A(i,:)=A(i,:)-A(i,k)*A(k,:);             
            end
        end
        disp(A);
    end
end      % end for k=1:N1


% = = = = Calcul et affichage du r�sultat
if EchelonnementJuste==1
    fprintf('\n MATRICE ECHELONNEE REDUITE :\n = = = = = = = = = = = = = = \n');
    disp(A);
    Touche=input(sprintf('\tUne touche pour continuer . . .'));
    
    % = = = R�solution du syst�me = = = =
    fprintf('\n VOICI LA SOLUTION DU SYSTEME : \n');
    X=A(:,end);
    % disp(X);
    
    fprintf('\n\t X = ');disp(X');
    Touche=input(sprintf('\tUne touche pour continuer . . .'));
else
    X=zeros(N1);
    fprintf('\n\t ERREUR : Pivot nul ');
end

end

