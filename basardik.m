clc;clear all;
n=input('istedi�iniz sat�r say�s�n� giriniz= ');
a=input('istedi�iniz sut�n say�s�n� giriniz= ');
B=[ ]; 
for i=1:n    
    % Distaki for satirlar icin   
    for j=1:a  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        B(i,j)=input(' ');   
    end
end
B