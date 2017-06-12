//JACOBI 3x3
//OBJETIVOS: RESOLVER SISTEMAS LINEARES COM 3 EQUAÇÕES E 3 VARIÁVEIS DA FORMA AX=B
//COMPONENTES: ANA BEATRIZ,DIEGO RODRIGUES,INÁCIO SILVEIRA,LEONARDO RIBEIRO
//PARÂMETROS DE ENTRADA: a[],b[]
//PARÂMETROS DE SAÍDA: x[],erro.

a=zeros(3,3);
b=[];
resp=0;
while resp==0 
    mprintf('insira os coeficientes da matriz A (por linhas)');
    for i=1:3
        for j=1:3
            a(i,j)=input("elemento: ");
        end
    end
    
    disp(a);
    aux=1;
    for i=1:3
        soma=0;
        for j=1:3
            if i~=j then
                soma=soma+abs(a(i,j));
            end
        end
        if soma>abs(a(i,i)) then
            aux=0;
        end
    end
    if aux==0 then
        disp("a matriz não converge - Deseja continuar?(1/0)");
        resp=input("resposta: ");
        else
        disp("a matriz converge");
        resp=1;
    end

end
    
mprintf('insira os elementos de B');
for i=1:3
    b(i)=input("elemento de b: ");
end
disp(b);

x=[b(1)/a(1,1),b(2)/a(2,2),b(3)/a(3,3)];
disp(x);


erro=1;
iteracoes=1;
anterior=[];
auxErro=[];
while erro>0.05
    
    mprintf('iteraçao: %i\n',iteracoes);
    iteracoes=iteracoes+1;
    for i=1:3
        soma=0;
        anterior(i)=x(i);
        for j=1:3
            if j~=i then
                soma=soma+a(i,j)*x(j);
            end
        end
        soma=b(i)-soma;
        x(i)=(1/a(i,i))*soma;
    end
    for aux=1:3
        auxErro(aux)=abs((x(aux))-(anterior(aux)));
    end
    erro=max(auxErro)/max(x);
    disp(x);
    
    mprintf('erro: %f\n\n',erro);
end

mprintf('resposta:');
disp(x);
    
