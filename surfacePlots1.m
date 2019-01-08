xg=linspace(-5,5,20);
[X,Y]=meshgrid(xg,xg);

Z=2-X.^2-Y.^2;

surf(X,Y,Z)
xlabel('x'); ylabel('y');