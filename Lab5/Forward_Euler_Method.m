function Forward_Euler_Method(f,h,inVal,endX)
x_k=0;
y_k=inVal;
g_k=y_k;

fprintf('Forward Euler Method\n');
fprintf('x(n) |   y(n)   |  y(n+1)  \n');

while x_k <= endX
    g_k1 = g_k + h * f(x_k,y_k);
    fprintf('%.2f | %f | %f\n',x_k,g_k,g_k1);
    x_k = x_k + h;
    g_k = g_k1;
    y_k=g_k1;
end
