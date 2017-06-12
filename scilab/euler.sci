function[VetX,VetY]=euler(a,b,m,y0)
    h = (b-a)/m;
    x = a;
    y = y0;
    deff('[Fxy]=f(x,y)','Fxy=(1.5*10⁴)/(5*10⁸)-(1.5*10^(-3)+3*10^(-4))*C');
    Fxy = feval(x,y,f);
    VetX(1) = x;
    VetY(1) = y;
    for i=1:m
        x = a + i*h;
        y = y + h*Fxy;
        disp(i,x,y,Fxy);
        VetX(i+1) = x;
        VetY(i +1) = y;
    end
endfunction
