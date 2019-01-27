syms x y
f(x,y)  = 10 - 8 * sqrt(y);
h=0.1;
inVal=0;
endX=1.2;

Forward_Euler_Method(f,h,inVal,endX)
% Improved_Euler_Method(f,h,inVal,endX)
% Runge_Kutta_Method(f,h,inVal,endX)