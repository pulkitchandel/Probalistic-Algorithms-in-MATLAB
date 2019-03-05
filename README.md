# Newton-s_forward_interpolation
Interpolation is the technique of estimating the value of a function for any intermediate value of the independent variable
  - Forward interpolation formula is used to interpolate the values of y nearer to the beginning value of the given table.
  - Also this formula is applicable if in case where h(difference in intravel) is constant 

```MATLAB
%To find value of f(x) at any point of x using newton-interpolation formula
clc; clear all; close all;
n=input('Enter the number of data points n: ');
h=input('Enter the step size: ');
x=input('Enter the data x: '); %[140 150 160 170 180]
y=input('Enter the data y: '); %[3.685 4.854 6.302 8.076 10.225]
x_reqd=input('Enter x for which value of y is sought: ');
p=(x_reqd-x(1))/h

%making difference table
for i=1:n
    diff(i,1)=y(i);
end
for j=2:n
    for i=1:n-j+1
        diff(i,j)=diff(i+1,j-1)-diff(i,j-1);
    end
end
ans=y(1);
for i=1:n-1
    term=1;
    for j=1:i
        term=term*(p-j+1)/j;
    end
    ans=ans+term*diff(1,i+1);
end
disp(ans)
```
