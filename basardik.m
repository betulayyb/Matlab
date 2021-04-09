clc;clear all;
n=input('istediðiniz satýr sayýsýný giriniz= ');
a=input('istediðiniz sutün sayýsýný giriniz= ');
B=[ ]; 
for i=1:n    
    % Distaki for satirlar icin   
    for j=1:a  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        B(i,j)=input(' ');   
    end
end
B