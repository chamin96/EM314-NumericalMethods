x=linspace(-5,5,20);

[X,Y]=meshgrid(x,x);

Z=2-(X.^2-Y.^2);

subplot(2,2,1);mesh(x,x,Z); title('mesh plot');
subplot(2,2,2);mesh(x,x,Z); title('surf plot');


