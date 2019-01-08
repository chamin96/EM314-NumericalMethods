function Simpsons_three8_rule(f,a,b)

realVal=integral(f,a,b);
h=(b-a)/3;

x0=a;
x3=b;

x1=x0+h;
x2=x1+h;



I=(h*3/8)*(f(x0)+3*f(x1)+3*f(x2)+f(x3));
rError=((realVal-I)/realVal)*100;

fprintf('From Simpsons 1/3 Rule = %f\n',I);
fprintf('Analytical Value = %f\n',realVal);
fprintf('Relative Error = %f\n',rError);
