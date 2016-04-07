clear
clc
x0=input("Enter value of x_0:");
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
x=x0;
y=y0;
count=0;
ms=f(x0,y0);
y1=y0+h*ms;
while(x<x_final)
 if(abs(y1-y)>=0.0001)
  ++count
  x+=h;
  y=y1;
  else
  count=0;
 endif
ms=(ms+f(x,y1))/2;
y1=y1+h*ms
ms
endwhile
