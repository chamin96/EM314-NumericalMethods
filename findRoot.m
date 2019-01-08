function findRoot()
    x=1; e=10; i=1; N=100; tol=0.00001;
    %x=input('initial value');
    while (e>tol)&&(i<N)
        x0=x;
        x=sqrt(x+1);
        e=abs(x-x0);
        i=i+1;
    end
        