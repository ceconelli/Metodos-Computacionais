function[y]= f(x)
    y = x^2-3*x-10;
endfunction

function[Raiz,Iter,CondErro] = newton_roots(x0,Toler,IterMax)
    Fx = f(3);
    DFx = numderivative(f,x0);
    x = x0;
    Iter = 0;
    disp(Iter,x,DFx,Fx);
    while 1
        DeltaX = -Fx/DFx;
        x = x+DeltaX;
        Fx = f(x);
        DFx = numderivative(f,x);
        Iter = Iter + 1;
        disp(Iter,x,DFx,Fx,DeltaX);
        if((abs(DeltaX)<=Toler & abs(Fx)<=Toler) | DFx == 0 |Iter>=IterMax) then
            break;
        end
    end
    Raiz = x;
    if(abs(DeltaX)<=Toler & abs(Fx)<=Toler) then
        CondErro = 0;
    else
        CondErro = 1;
    end
endfunction
