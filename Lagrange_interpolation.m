%To calculate the value of f(x) at any point of x using Lagrange's interpol
clc; clear all; close all;
disp('Name: Pulkit Chandel/PRN: 17070123078')
n=input('Enter number of data points n: ');
x=input('Enter the data x: ');
y=input('Enter the data y: ');
x_reqd=input('Enter x for which value of y is sought: ');
result=0;
for i=1:n
    num=1;
    den=1;
    for j=1:n
        if j~=i
            num=num*(x_reqd-x(j));
            den=den*(x(i)-x(j));
        end
    end
    result=result+(num/den)*y(i);
end
disp(result)