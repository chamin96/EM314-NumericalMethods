function LagrangeInterpolant(l,m,size)

syms p(x)
    p(x)=0;

for i=1:size
    temp=1;
    for j=1:size
        if i==j
            continue
        else
           temp=temp*(x-l(j))/(l(i)-l(j));
        end
    end
    
    p=p+temp*m(i);

end

ezplot(p)
hold;
grid on;
plot(l,m,'o');


