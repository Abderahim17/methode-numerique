function X=SolutionDescente(A,b)
% La matrice A doit être triangulaire inférieure
A=[A,b];  % matrice augmentée
N=size(A,1);
X=[];
for i=1:N
    X=[X,0];
end
X=X';
%X(N)=A(N,N+1)/A(N,N);
X(1)=A(1,N+1)/A(1,1);

for i=2:N
    x=A(i,N+1);
    for j=1:i-1
        x=x-A(i,j)*X(j);
    end
    x=x/A(i,i);
    X(i)=x; 
end
end

