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
The Newton-Raphson method (also known as Newton's method) is a way to quickly find a good approximation for the root of a real-valued function . It uses the idea that a continuous and differentiable function *f(x)=0* can be approximated by a straight line tangent to it.  
Suppose you need to find the root of a continuous, differentiable function *f(x)*, and you know the root you are looking for is near the point *x=x<sub>0</sub>*. Then Newton's method tells us that a better approximation for the root is  
        ![](https://latex.codecogs.com/gif.latex?x_%7B1%7D%3Dx_0-%20%5Cfrac%7Bf%28x_0%29%7D%7Bf%27%28x_0%29%7D)  
  This process may be repeated as many times as necessary to get the desired accuracy. In general, for any x-value , the next value x<sub>n</sub> is given by  
![](https://latex.codecogs.com/gif.latex?x_%7Bn&plus;1%7D%3Dx_n-%20%5Cfrac%7Bf%28x_n%29%7D%7Bf%27%28x_n%29%7D)


![](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/cube_root_27_anim.gif)  
[MATLAB code](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/newtonraph.m)

# Numerical Integration
The process of evaluating a definite integral from a set of tabulated values of the integrand *f(x)* is called *numerical integration*
## Trapezoidal rule
![gif](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/trapezoid.gif)

![trapezoidal](https://latex.codecogs.com/gif.latex?%5Cint_%7Bx_0%7D%5E%7Bx_0&plus;nh%7Df%28x%29dx%3D%5Cfrac%7Bh%7D%7B2%7D%5B%28y_0&plus;y_n%29&plus;2%28y_1&plus;y_2&plus;...y_%7Bn-1%7D%29%5D)
[MATLAB Code](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/edit/trapezoidal_rule.m)
## Simpson's one-third rule
![simonethird](https://latex.codecogs.com/gif.latex?%5Cint_%7Bx_0%7D%5E%7Bx_0&plus;2h%7Df%28x%29dx%3D%5Cfrac%7Bh%7D%7B3%7D%5B%28y_0&plus;y_n%29&plus;4%28y_1&plus;y_3&plus;...y_%7Bn-1%7D%29&plus;2%28y_2&plus;y_4&plus;...&plus;y_%7Bn-2%7D%29%5D)
[MATLAB Code](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/master/simpson_onethirdrule.m)
## Simpson's three-eighth rule
![simthreeeight](https://latex.codecogs.com/gif.latex?%5Cint_%7Bx_0%7D%5E%7Bx_0&plus;3h%7Df%28x%29dx%3D%5Cfrac%7B3h%7D%7B8%7D%5B%28y_0&plus;y_n%29&plus;3%28y_1&plus;y_2&plus;y_4&plus;y_5...y_%7Bn-1%7D%29&plus;2%28y_3&plus;y_6&plus;...&plus;y_%7Bn-3%7D%29%5D)
[MATLAB Code](https://github.com/pulkitchandel/Probalistic-Algorithms-in-MATLAB/blob/master/simpson_ThreeEightRule.m)
