clear
clc
x0=input("Enter value of x_0:");
y0=input("Enter value of y_0:");
x_final=input("Enter the value of required x:");
h=input("Enter step-size:");
xnew=x0;
ynew=y0;
count=0;
ms0=f(x0,y0);
msnew=ms0;
ynew=y0+h*msnew;
while(xnew<=x_final)
 if (count==0)
 xnew=x0+h
 msnew=f(x,yold)
 y1=y+h*ms
 ms
 count=1;
 else (count==1)
 ms=(ms+f(x,y1))/2;
 y2=y1+h*ms
 count=1;
 if(y2-y1)==0
 {
 count=0;
 }
 y1=y2;
 endif
 endif
 endwhile
