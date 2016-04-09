clc
clear
iteration=0;
x0=input("Enter the value of x0:");%Initial guess of variables
x1=input("Enter the value of x1:");
Precision=input("Enter precision:");
p0=fsolv(x0);% Is the function while in which function is defined
p1=fsolv(x1);
if(p0*p1>0)
"no root between these points"
else
while(abs(x1-x0)>Precision)
    x2=x1-[((x1-x0)/(p1-p0))*p1];
    sprintf("%5.5f",x2)
    iteration=iteration+1;
    p2=fsolv(x2);
    x0=x1;
    x1=x2;
    p0=p1; 
    p1=p2; 
endwhile
endif
