function A = trapez(x,y)
    l=length(x);
    m=length(y);
    A=0;
    for I=1:l-1
        A=A+(y(I+1)+y(I))*(x(I+1)-x(I))/2;
    end