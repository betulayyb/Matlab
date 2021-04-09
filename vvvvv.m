clc;clear all;
n=input('istediðiniz satýr sayýsýný giriniz= ');
a=input('istediðiniz sutün sayýsýný giriniz= ');
for c=2:n
for e=c:n
    fprintf('e=%d\n',e)
end
end
 
 for r=1:a-1
 for d=r:a-1;
  fprintf('r=%d\n',r)
  fprintf('m(%d,%d)',e,r)
 end
 end
 