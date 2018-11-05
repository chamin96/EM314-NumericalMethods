N=10;
x=3;
hk_arr=zeros(1,10);
Eh_k_arr=zeros(1,10);

fprintf(' __________________________________________ \n');
fprintf('| k  |     hk     |   f%s(x)    |     Ehk   |\n', '''');
fprintf('|----+------------+------------+-----------|\n');

for k=1:N
    hk=1/(2^k);
    hk_arr(k)=hk;
    fh_x=(1/hk).*(log(x+hk)-log(x));
    Eh_k=abs((1/x) - fh_x);
    Eh_k_arr(k)=Eh_k;
    fprintf('|%2d  |  %f  |  %f  |  %f |\n',k,hk,fh_x,Eh_k);
    fprintf('|----+------------+------------+-----------|\n');
end


loglog(hk_arr,Eh_k_arr);
p=polyfit(log(hk_arr),log(Eh_k_arr),1);
disp(p);
xlabel('log(hk)');
ylabel('log(Ehk)');