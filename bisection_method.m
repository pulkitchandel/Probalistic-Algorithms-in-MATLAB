clc;clear all;close all;
f=input('Enter the function','s');
f=inline(f);
a=input('Enter the first value of guess a:');
b=input('Enter the first value of guess b:');

if f(a)*f(b)<0
else
    fprintf('\nThe Guess is incorrect')
    fprintf('\nEnter new guesses')
    a=input('Enter the first value of guess a:');
    b=input('Enter the first value of guess b:');
end
disp('i   x   f(x)   err')
for i=1:10
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
    err=b-a;
    s=sprintf('\n%3.0f  %0.8f  %0.8f  %0.8f',i,c,f(c),err);
    disp(s);
end
disp(sprintf('\nThe required root is: %0.8f',c))
