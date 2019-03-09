clc;
clear all;
close all;
A=[20 1 -2 -3; 3 20 -1 -2; 2 -3 20 -1;-1 -1 -2 10];
%A=[1 5 10; 5 9 12; 1 7 25];
B=[17;-18;25;-9];
[M N]=size(A);

if M~=N
    fprintf(' A is not a Square Matrix');
end    

for i=1:M
    row=abs(A(i,:));   %Absolute value of row 1,row2,row3
    d=sum(row)-row(i);  %Subtract 23 - 20
     if d>=row(i)
          fprintf('\n A is not diagonally dominant');
     end
end
%% 4x4 matrix
 x=zeros(M,1);
 for iter=1:10
  for j=1:M
      xold=x(j);
      num=B(j,end)-A(j,1:j-1)*x(i:j-1)-A(j,j+1:M)*x(j+1:M);
      x(j)=num/A(j,j);
      err=max(abs(x(j)-xold));
  end
  disp(sprintf('\n %3.0f %1.8f %1.8f %1.8f %1.8f',iter,x(1),x(2),x(3),x(4),err));
 end
 %disp