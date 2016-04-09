clc
clear
x0=y0=z0=0;%Initial values of variables
Precision=input("Enter the value of precision");
iteration=1
%Define your equations here
x1=(1/20)*(17-y0+2*z0) % Keep x on L.H.S and rest values on R.H.S
y1=(1/20)*(-18-3*x1+z0)% Keep y on L.H.S and rest values on R.H.S
z1=(1/20)*(25-2*x1+3*y1)% Keep z on L.H.S and rest values on R.H.S
while(abs(x1-x0)>Precision)
y0=y1;
z0=z1;
x0=x1;      
iteration=iteration+1
x1=(1/20)*(17-y0+2*z0)
y1=(1/20)*(-18-3*x1+z0)
z1=(1/20)*(25-2*x1+3*y1)
endwhile
