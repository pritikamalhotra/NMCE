clc
clear
x0=y0=z0=0;%Initial values of variables
iteration=0;
Precision=input("Enter the value of precision:");
%Define your equations here
A=[ 20 1 2 17; % A is a 3X3 matrix
    3 20 1 -18;
    2 -3  20 25]
    
x1=(1/20)*(17-y0-2*z0); % Keep x on L.H.S and rest values on R.H.S 
y1=(1/20)*(-18-3*x0-z0);% Keep y on L.H.S and rest values on R.H.S 
z1=(1/20)*(25-2*x0+3*y0);% Keep z on L.H.S and rest values on R.H.S 
while(abs(x1-x0)>Precision)
y0=y1;
z0=z1;
x0=x1;
++iteration
x1=(1/20)*(17-y0+2*z0)
y1=(1/20)*(-18-3*x0+z0)
z1=(1/20)*(25-2*x0+3*y0)
endwhile