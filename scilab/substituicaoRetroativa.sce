y=[5 -2 6 1;0 3 7 -4;0 0 4 5;0 0 0 2];
c=[1 -2 28 8];
x=[0 0 0 0];
for i=4:-1:1
    soma=0;
    for j=i+1:4
        soma=soma+(y(i,j)*x(j));
    end
    x(i)=(c(i)-soma)/y(i,i);
end
disp(x);
