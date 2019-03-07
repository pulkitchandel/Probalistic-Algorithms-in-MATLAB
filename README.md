# Interpolation
The process of finding the curve passing through the points *(x<sub>0</sub>,y<sub>0</sub>),(x<sub>1</sub>,y<sub>1</sub>),(x<sub>2</sub>,y<sub>2</sub>),...,(x<sub>n</sub>,y<sub>n</sub>)* is called as **Interpolation** and the curve obtained is called as **Interpolating curve.**
Let *x<sub>0</sub>,x<sub>1</sub>,x<sub>2</sub>,...,x<sub>n</sub>* be given set of observations and *y=f(x)* be the given function, then the method to find is called as an **Interpolation.**
If is not in the range of and , then the method to find is called as **Extrapolation**.

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
