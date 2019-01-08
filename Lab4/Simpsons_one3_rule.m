function Simpsons_one3_rule(f,seg,a,b)

realVal=integral(f,a,b);
h=(b-a)/seg;

x0=a;
xn=b;

begin=f(x0);
last=f(xn);

x_odd=x0+h;
x_even=x0+2*h;
temp1=0;
temp2=0;

while x_odd < xn
    temp1=temp1+4*f(x_odd);
    x_odd=x_odd+2*h;
end

while x_even < xn
    temp2=temp2+2*f(x_even);
    x_even=x_even+2*h;
end

I=(h/3)*(begin+temp1+temp2+last);
rError=((realVal-I)/realVal)*100;

fprintf('From Simpsons 1/3 Rule = %f\n',I);
fprintf('Analytical Value = %f\n',realVal);
fprintf('Relative Error = %f\n',rError);
