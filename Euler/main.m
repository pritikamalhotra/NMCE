clear
clc
x0=input("Enter value of x_0: ");
y0=input("Enter value of y_0: ");
x_final=input("Enter the value of required x: ");
h=input("Enter step-size: ");
n_o_steps=x_final/h;
disp("Number of steps: "),disp(n_o_steps);
euler(x0,y0,h,x_final);