function[y]= f(x)
    y = x^2-3*x-10;
endfunction

function[Raiz,Iter,CondErro]=Bissecao(a,b,Toler,IterMax)
    Fa = f(a);
    Fb = f(b);
    if(Fa*Fb>0) then
        disp("Função nao muda de sinal nos extremos do intervalo dado");
        return;
    end
    
    DeltaX = abs(b-a)/2;
    Iter = 0;
    
    while 1
        x = (a+b)/2;
        Fx = f(x);
        disp(Iter,a,Fa,b,Fb,x,Fx,DeltaX);
        if((DeltaX<=Toler & abs(Fx)<=Toler) | Iter>=IterMax) then
            break;
        end
        if(Fa*Fx>0) then
            a = x;
            Fa = Fx;
        else
            b = x;
        end
        DeltaX = DeltaX/2;
        Iter = Iter+1;
    end
    Raiz = x;
    if(DeltaX<=Toler & abs(Fx)<=Toler) then
        CondErro = 0;
    else
        CondErro = 1;
    end   
endfunction
