a=[2 0 0 0;3 5 0 0;1 -6 8 0;-1 4 -3 9];
x=[0 0 0 0];
b=[4 1 48 6];

for i=1:4
    soma=0;
    for j=1:i-1
        soma=soma+(a(i,j)*x(j));
    end
    x(i)=(b(i)-soma)/a(i,i);
end

disp(x);
