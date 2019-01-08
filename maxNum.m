function max = maxNum(x)
    max=x(1);
    for i=2:length(x)
        if x(i)>max
            max=x(i);
        end
    end