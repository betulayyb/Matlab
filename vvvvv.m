clc;clear all;
n=input('istedi�iniz sat�r say�s�n� giriniz= ');
a=input('istedi�iniz sut�n say�s�n� giriniz= ');
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
 