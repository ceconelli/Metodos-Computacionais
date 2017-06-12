a=[1 -3 2;-2 8 -1;4 -6 5];
pivot=[0 0 0];
n=3;
for i=1:n
    pvt=a(1,i);
    for j=1:n
        if a(j,i) >= pvt then 
            pvt=a(j,i);
            pivot(i)=j;
        else
        end
    end
    aux=a(pivot(i),:);
    
        
end

