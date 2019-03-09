# Interpolation
The process of finding the curve passing through the points *(x<sub>0</sub>,y<sub>0</sub>),(x<sub>1</sub>,y<sub>1</sub>),(x<sub>2</sub>,y<sub>2</sub>),...,(x<sub>n</sub>,y<sub>n</sub>)* is called as **Interpolation** and the curve obtained is called as **Interpolating curve.**  
<img src="https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/interpol.PNG" width="600" height="500" />

Let *x<sub>0</sub>, x<sub>1</sub>, x<sub>2</sub>,..., x<sub>n</sub>* be given set of observations and *y=f(x)* be the given function, then  
the method to find *f(x<sub>m</sub>) ∀ x<sub>o</sub>≤x<sub>m</sub>≤x<sub>n</sub>* is called as an **Interpolation.** 

If *x<sub>m</sub>* is not in the range of *x<sub>o</sub>* and *x<sub>n</sub>* , then the method to find is called as **Extrapolation**.  
The Interpolation depends upon finite difference concept.If *x<sub>0</sub>,x<sub>1</sub>,x<sub>2</sub>,...,x<sub>n</sub>* be given set of observations and let *y<sub>0</sub>=f(x<sub>0</sub>), y<sub>1</sub>=f(x<sub>1</sub>),..., y<sub>n</sub>=f(x<sub>n</sub>)* be their corresponding values for the curve *y=f(x)* , then *y<sub>1</sub>-y<sub>0</sub>, y<sub>2</sub>-y<sub>1</sub>,..., y<sub>n</sub>-y<sub>n-1</sub>* is called as **finite difference.**

# Bisection Method
Bisection method is the simplest among all the numerical schemes to solve the transcendental equations. It follows [Intermediate value theorem.](https://www.mathsisfun.com/algebra/intermediate-value-theorem.html)  
![](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/demo-a.gif)
## Algorithm
- Choose *a* and *b* as two guesses for the root such that f(a) f(b) < 0, or in other words, ***f(x) changes sign between a and b***
- Estimate the root, *c* of the equation f (x) = 0 as the mid point between *a* and *b* as *c=(a+b)/2*  
-- Now check the following
    If , ***f(a)*f(b)<0*** then the root lies between *a* and *c* ; then *a = a ; b = c*.
    If , ***f(a)*f(b)>0*** then the root lies between *c* and *b* ; then *a = c ; b = b*.
    If , ***f(a)*f(b)=0*** then the root is *c* ; STOP!

# Newton-Raphson Method  


![](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/cube_root_27_anim.gif)
# Gauss-Seidal Method
# Newton's Forward Interpolation  
# Newton's Backward Interpolation  
