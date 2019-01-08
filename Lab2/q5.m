x0=4;
T=10^(-8);
nmax=100;
[x_n1,res,niter] = newtons(@f,@diff_f,x0,T,nmax)