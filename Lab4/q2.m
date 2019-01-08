m=2;
n=3;
f=@(x) (x.^(m-1)).*((1-x).^(n-1));
a=0;
b=1;
seg=8;

CompositeTrapezoidal(f,seg,a,b)
Simpsons_one3_rule(f,seg,a,b)