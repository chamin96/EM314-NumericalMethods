function count = countEven(x)
    count=0;
    l=length(x);
    for I=1:l
        if mod(x(I),2)==0
            count=count+1;
        end
    end