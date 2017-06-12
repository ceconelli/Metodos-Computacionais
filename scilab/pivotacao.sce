y=[4 8 7 5;3 4 1 8;9 6 3 1;9 7 2 8];
n=4;
j=1;
for i=1:n-1
    for iaux=i+1:n
        aux=y(i,j);
        mult=y(iaux,j)/aux;
        y(iaux,:)=mult*y(i,:)-y(iaux,:);
    end
    j=j+1;
end
disp(y);
