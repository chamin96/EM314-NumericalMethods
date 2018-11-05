t=zeros(1,10);
i=1;

for n=500:500:5000
    A=rand(n);
    tStart=tic;
    detA = det(A);
    tElapsed=toc(tStart);

    t(i)=tElapsed;
    i=i+1;
end

n=500:500:5000;

N=log(n);
T=log(t);
hold;
plot(N,T,'-g+');
p=polyfit(log(n),log(t),1);
y=p(1)*N+p(2);
plot(N,y,'m');
disp(p);
xlabel('log(N)');
ylabel('log(CPU time)');