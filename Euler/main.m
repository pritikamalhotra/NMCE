clear
clc
x_initial=input("Enter value of x_0: ");% intial value of x
y_initial=input("Enter value of y_0: ");% Value of y at intial x
x_final=input("Enter the value of required x: ");% the x at which final value is to be found
h=input("Enter step-size: ");% step size
n_o_steps=x_final/h;% Number of steps
disp("Number of steps: "),disp(n_o_steps);
euler(x_initial,y_initial,h,x_final); % Call to euler function