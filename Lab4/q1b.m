f=@(x) 1-x-4*x.^3+2*x.^5;
a=0;
b=4;
seg=4;
Simpsons_one3_rule(f,seg,a,b)