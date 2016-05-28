NMCE contains the programs to solve numerical problems related to Numerical Methods of Civil engineers.
It contains programs for various methods:

1.  Adam's method

2.  Bisection method

3.  Euler's method

4.  Jacobi's method

5.  Jordan method 

6.  Modified Euler's method

7.  Newton Raphson method

8.  RK method

9.  Seidel

10. Secant

It contains Functions folder.

This folder contains test methods in which functions are defined. You can use these to test your problems or you can define your own functions.

After placing NMCE folder at your desired location, you can either copy the function file you want to the respective folder

Inorder to use fsolv function:

cd to the location where NMCE is located:

cd NMCE/

If you want copy fsolv to work with Bisection program:

cp Functions/fsolv.m Bisection/

Or you even addpath and savepath of the Functions folder inorder to let Octave locate them for you.

cd to the location where NMCE is located:

cd NMCE/

Use addpath("Functions/");

savepath;


