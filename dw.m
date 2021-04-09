for n=1:6;
    i=10:15;
    t=1+i;
    f(n,:)=1;
    a(:,n)=f(n,:)/t(:,n);
end