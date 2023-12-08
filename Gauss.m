function [] = GaussSimple(a,b)
A= [a,b];
for k=1:n-1
    for i=k+1:n
        B=A(i,k);
        for j=k:1:n+1
            A(i,j)=A(i,j)-B*A(k,j)/A(k,k);
        end
    end
    fprintf('\n\titeration N° %d:',k);
    fprintf('\n\t================\n');
end
for i=n:-1:1
    X(i) = A(i,n+1);
    for j=i+1:-1:1
        X(i) = X(i) - (A(i,j)*tmp);
    end
    X(i) = X(i)/A(i,i);
end