function Runge_Kutta_Method(f,h,inVal,endX)

x_k=0;
y_k=inVal;
g_k=y_k;
fprintf('4th order Runge-Kutta Method\n');
fprintf('x(n) |   y(n)   |  y(n+1)  \n');

while x_k <= endX
    k1 = f(x_k,y_k);
    k2 = f(x_k+(h/2), y_k+(h/2)*k1);
    k3 = f(x_k+(h/2), y_k+(h/2)*k2);
    k4 = f(x_k+h, y_k+h*k3);
    
    g_k1 = g_k + (h/6) * (k1+2*k2+2*k3+k4);
    fprintf('%.2f | %f | %f\n',x_k,g_k,g_k1);
    x_k = x_k + h;
    g_k = g_k1;
    y_k = g_k1;
end