function[L]=LimitesRaizes(n,c)
    if(c(1) == 0) then
        disp("coeficiente c(1) nulo");
        return;
    end
    t = n + 1;
    c(t+1) = 0;
    
    while c(t) == 0
        t = t-1;
    end
    
    for i=1:4
        if(i == 2 | i == 4) then
            for j=1:t/2
                Aux = c(j);
                c(j) = c(t-j+1);
                c(t-j+1) = Aux;
            end
        else
            if(i == 3) then
                for j=1:t/2
                    Aux = c(j);
                    c(j) = c(t-j+1);
                    c(t-j+1) = Aux;
                end
                
                for j=t-1:-2:1
                    c(j) = -c(j);
                end
            end
        end
        if(c(1)<0) then
            for j=1:t
                c(j) = -c(j);
            end
        end
        k = 2;
        while c(k)>=0 & k<=t
            k = k+1;
        end
        if(k<=t) then
            B = 0;
            for j=2:t
                if(c(j)<0 & abs(c(j))>B) then
                    B = abs(c(j));
                end
            end
            L(i) = 1+(B/c(1))^(1/(k-1));
        else
            L(i) = 10^100;
        end
    end
    Aux = L(1);
    L(1) = 1/L(2);
    L(2) = Aux;
    L(3) = -L(3);
    L(4) = -1/L(4);
endfunction
