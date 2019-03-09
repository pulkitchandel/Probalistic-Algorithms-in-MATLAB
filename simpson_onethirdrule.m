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
sum1=0;
for i=1:n-1
    x=a+i*h;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum1=sum1+4*f(x);
    end
    result=(h/3)*(f(a)+f(b)+sum+sum1);
end
disp(result)