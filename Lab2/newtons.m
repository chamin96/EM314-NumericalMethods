function [x_n1,res,niter]=newtons(f,diff_f,x0,T,nmax)
niter=0;
res=abs(x0);
x_n=x0;

x_n1 = x_n - (f(x_n)/diff_f(x_n));

if (diff_f(x_n) == 0)
    disp('diff_f(x) must be none zero value.');
    return
end

while(res>=T) && (niter<nmax)
    x_n1 = x_n - (f(x_n)/diff_f(x_n));
    res=abs(x_n1-x_n);
    x_n=x_n1;
    niter=niter+1;
end
    