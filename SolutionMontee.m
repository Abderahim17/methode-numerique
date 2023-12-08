function X=SolutionMontee(A,b)
% La matrice A doit être triangulaire supérieure
A=[A,b]; % Matrice augmentée
N=size(A,1);
X=[];
for i=1:N
    X=[X,0];
end
X=X';
X(N)=A(N,N+1)/A(N,N);

for i=N-1:-1:1
    x=A(i,N+1);
    for j=i+1:N
        x=x-A(i,j)*X(j);
    end
    x=x/A(i,i);
    X(i)=x; 
end

