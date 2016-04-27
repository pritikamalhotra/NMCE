clear
clc
x0=input("Enter value of x_0:");
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
x=x0;
y=y0;
flag=0
while(x<x_final)
  if(flag==0)
  ms0=f(x,y);
  ynew=y+h*(ms0)
  xnew=x+h
  flag=1;
  else
  ms=(ms0+f(xnew,ynew))/2;
  t=y+h*ms;
    if(ynew==t)
    y2=y+h*ms
    break;
    endif
  endif
endwhile
