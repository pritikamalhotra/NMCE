clear
clc
x0=input("Enter value of x_0");% Initial guess
y0=input("Enter value of y_0");
x_final=input("Enter the value of required x");
h=input("Enter step-size");
n_o_steps=x_final/h;
disp("Number of steps"),disp(n_o_steps);%Number of steps
x=x0;
y=y0;
while(x<x_final)
k1=h*f(x,y);% f is the function file
k2=h*f(x+h/2,y+k1/2);
k3=h*f(x+(h/2),y+(k2/2));
k4=h*f(x+h,y+k3);
k=1/6*(k1+2*k2+2*k3+k4);
x+=h;
y+=k;
endwhile
k1
k2
k3
k4
k
y