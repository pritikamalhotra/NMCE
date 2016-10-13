clear
clc
x0=input("Enter value of x_0:");% The largest value of x
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
%n_o_steps=x_final/h;
%y1=y(x0-h);
%y2=y(x0-2*h);
%y3=y(x0-3*h);
adam(x0, y0,h);