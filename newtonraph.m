% find the root of equation using newton raphson method by for loop
clc
clear all
close all
syms x;
f=input('Entert the function: ','s');
f=inline(f);
x0=input('Initial guess: ');
f1=diff(f(x));
df=inline(f1);
disp('   i       x         err');
for i=1:10
    if df(x0)==0
        fprintf('the derivative is zero');
        return
    end
    x=x0-f(x0)/df(x0);
    err=abs(x-x0);
    s=sprintf('\n %3.0f  %1.8f  %1.8f',i,x,err);
disp(s);
x0=x;
end
disp(sprintf('\n the required root is x= %1.8f',x));

% find the root of equation using newton raphson method by while loop
clc
clear all
close all
syms x;
f=input('Enter the function: ','s');
f=inline(f);
x0=input('Initial guess: ');
tol=input('enter the allowed error: ');
f1=diff(f(x));
df=inline(f1);
err=1;
disp('   i       x         err');
i=0;
while err>tol
    if df(x0)==0
        fprintf('the derivative is zero');
        return
    end
    x=x0-f(x0)/df(x0);
    err=abs(x-x0);
    i=i+1;
    s=sprintf('\n %3.0f  %1.8f  %1.8f',i,x,err);
disp(s);
x0=x;
end
disp(sprintf('\n the required root is x= %1.8f',x));