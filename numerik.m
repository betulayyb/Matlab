clc;clear all;
fprintf('boyutu kaç olsun:')
boyut=input('')
for i=1:boyut% Distaki for satirlar icin   
    for j=1:boyut  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        a(i,j)=input(' ');   
    end
end
a


for j=1:boyut-1

    for z=2:boyut

        if a(j,j)==0

            t=a(j,:);a(j,:)=a(z,:);

            a(z,:)=t;

        end

    end

    for i=j+1:boyut

        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));

    end

end

x=zeros(1,boyut);

for s=boyut:-1:1

    c=0;

    for k=2:boyut

        c=c+a(s,k)*x(k);

    end

    x(s)=(a(s,boyut)-c)/a(s,s);

end

disp('Gauss elimination method:');

a

x'
