function CompositeTrapezoidal(f,seg,a,b)

realVal=integral(f,a,b);
h=(b-a)/seg;

x0=a;
xn=b;

begin=f(x0);
last=f(xn);

x=x0+h;
temp=0;

while x < xn
    temp=temp+2*f(x);
    x=x+h;
end

I=(h/2)*(begin+temp+last);
rError=((realVal-I)/realVal)*100;

fprintf('From Composite Trapezoidal Rule = %f\n',I);
fprintf('Analytical Value = %f\n',realVal);
fprintf('Relative Error = %f\n',rError);
