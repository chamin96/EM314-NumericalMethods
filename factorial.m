function answer= factorial(x)
    answer=1;
    if x==0
        answer=1;
    else
        while(x>0)
            answer=answer*x;
            x=x-1;
        end
    end