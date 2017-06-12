function[y]= f(x)
    y = x^2-3*x-10;
endfunction

function[Raiz,Iter,CondErro]=Secante(a,b,Toler,IterMax)
    Fa = f(a);
    Fb = f(b);
    if(abs(Fa)<abs(Fb)) then
        t = a;
        a = b;
        b = t;
        t = Fa
        Fa = Fb;
        Fb = t;
    end
    
    Iter = 0;
    x = b;
    Fx = Fb;
    
    while 1
        DeltaX = -Fx/(Fb-Fa)*(b-a);
        x = x + DeltaX;
        Fx = f(x);
        disp(Iter,a,Fa,b,Fb,x,Fx,DeltaX);
        if((abs(DeltaX)<=Toler & abs(Fx)<=Toler) | Iter>=IterMax) then
            break;
        end
        a = b;
        Fa = Fb;
        b = x;
        Fb = Fx;
        Iter = Iter +1;
    end
    
    Raiz = x;
    
    if(abs(DeltaX)<=Toler & abs(Fx)<=Toler) then
        CondErro = 0;
    else
        CondErro = 1;
    end
     
endfunction
