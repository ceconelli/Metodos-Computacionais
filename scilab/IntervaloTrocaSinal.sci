function[y]= f(x)
    y = 2*x^3-cos(x+1)-3;
endfunction

function[a,b,CondErro]=IntervaloTrocaSinal(z)
    if(z == 0) then
        a = -0.05;
        b = 0.05;
    else
        a = 0.95*z;
        b = 1.05*z;
    end
    
    Iter = 0;
    Aureo = 2/(sqrt(5)-1);
    Fa = f(a);
    Fb = f(b);
    disp(Iter,a,b,Fa,Fb);
    
    while 1 == 1
        if(Fa*Fb<=0 | Iter>=20) then
            break;
        end
        Iter = Iter+1;
        if(abs(Fa)<abs(Fb)) then
            a = a-Aureo*(b-a);
            Fa = f(a);
        else
            b = b+Aureo*(b-a);
            Fb = f(b);
        end
        disp(Iter,a,b,Fa,Fb);
    end
    if(Fa*Fb<=0) then
        CondErro = 0;
    else
        CondErro = 1;
    end
   
endfunction
