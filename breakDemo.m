function k = breakDemo(n)
    x=rand(1,n);
    k=1;
    while k<=n
        if x(k)>0.8
            break
        end
        k=k+1;
    end
    fprintf('x(k)=%f for k = %d n=%d\n',x(k),k,n);