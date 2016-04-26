clear
clc
x0=input("Enter value of x_0:");% THe largest value of x
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
%n_o_steps=x_final/h;
%y1=y(x0-h);
%y2=y(x0-2*h);
%y3=y(x0-3*h);
y1=input("Enter value of y1 at x0-h:");
y2=input("Enter value of y2 at x0-2h:");
y3=input("Enter value of y3 at x0-3h:");
f0=f(x0,y0)
f1=f(x0-h,y1)
f2=f(x0-2*h,y2)
f3=f(x0-3*h,y3)
yp=y0+[h*(55*f0-59*f1+37*f2-9*f3)]/24;
"Result of predictor",yp
f4=f(x0+h,yp);
yc=y0+h/24*(9*f4+19*f0-5*f1+f2);
"Result of corrector",yc
