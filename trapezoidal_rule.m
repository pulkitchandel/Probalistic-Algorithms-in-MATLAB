%Solving integral using Trapezoidal rule
clc; clear all; close all;
disp('Name: Pulkit Chandel/PRN: 17070123078')
syms x;
a=input('Enter lower limit a: ');
b=input('Enter upper limit b: ');
n=input('Enter the number of subinterval n: ');
f=input('Enter function: ');
f=inline(f);
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    result=(h/2)*(f(a)+f(b)+2*sum);
end
disp(result)