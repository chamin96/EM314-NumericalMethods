x=[-1:0.1:1];
y=[-1:0.1:1];

for i=1:21, for j=1:21, z(i,j) = x(i)^2+y(i)^2; end, end

mesh(x,y,z)
contour(z)