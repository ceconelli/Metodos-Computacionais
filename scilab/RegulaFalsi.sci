function[y]= f(x)
    y = x^2-3*x-10;
endfunction

function[Raiz,Iter,CondErro]=RegulaFalsi(a,b,Toler,IterMax)
    Fa = f(a);
    Fb = f(b);
    if(Fa*Fb>0) then
        disp("Função nao muda de sinal nos extremos do intervalo dado");
        return;
    end
    
    if(Fa>0) then
        t = a;
        a = b;
        b = t;
        t = Fa;
        Fa = Fb;
        Fb = t;
    end
    
    Iter = 0;
    x= b;
    Fx = Fb;

    while 1
        DeltaX = -Fx/(Fb-Fa)*(b-a);
        x = x+DeltaX;
        Fx = f(x);
        disp(Iter,a,Fa,b,Fb,x,Fx,DeltaX);
        if((abs(DeltaX)<=Toler & abs(Fx)<=Toler) | Iter>=IterMax) then
            break;
        end
        
        if(Fx<0) then
            a = x;
            Fa = Fx;
        else
            b = x;
            Fb = Fx;
        end
        Iter = Iter+1;
    end
    Raiz = x;
    
    if(abs(DeltaX)<=Toler & abs(Fx)<=Toler) then
        CondErro = 0;
    else
        CondErro = 1;
    end        
endfunction
