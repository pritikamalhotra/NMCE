clear
clc
x0=input("Enter value of x_0:");
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
x=x0;
y=y0;
flag=0;
ms=1;
while(x<=x_final)
  if(flag==0)
  y1=f(x,y);
  y2=y1+h*ms
  x=x+h
  flag=1;
  else
    do{
  y1=y2+y1;
  ms=(ms+y1)/2;
  y2new=y1+h*ms
    }
  until(abs(y2new-y2)>0.0001);
flag=0;
endif
endwhile
