N=40;
x=3;
hk_arr=zeros(1,40);
Eh_k_arr=zeros(1,40);

fprintf(' ______________________________________________ \n');
fprintf('| k  |     hk     |   f%s(x)    |      Ehk      |\n', '''');
fprintf('|----+------------+------------+---------------|\n');

for k=1:N
    hk=1/(2^k);
    hk_arr(k)=hk;
    fh_x=(1/hk).*(log(x+hk)-log(x));
    Eh_k=abs((1/x) - fh_x);
    Eh_k_arr(k)=Eh_k;
    fprintf('|%2d  |  %f  |  %f  |  %ld |\n',k,hk,fh_x,Eh_k);
    fprintf('|----+------------+------------+---------------|\n');
end


loglog(hk_arr,Eh_k_arr,'r');
p=polyfit(log(hk_arr),log(Eh_k_arr),1);
disp(p);
xlabel('log(hk)');
ylabel('log(Ehk)');
