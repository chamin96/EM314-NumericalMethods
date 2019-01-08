function [p,q,r]=simple(a,b,c)
    p=a^2+b^2+c^2;
    q1=(a^2-b^2)/(c+a);
    q=q1+(c-a);
    r=a^3+b^3+c^3;