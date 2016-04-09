clc
clear
iteration=0;
f=@(x) power(x,4)-x-10;
fdiff=@(x) 4*power(x,3)-1;
x1=input("Enter the value of x1:");
x2=input("Enter the value of x2:");
Precision=input("Enter the value of precision:");
p1=f(x1);
p2=f(x2); 
x3=x2-(p2/fdiff(x2));
if(p1*p2>0)
"no root between these points"
else
while(abs(x3-x2)>Precision)
    iteration=iteration+1
    x2=x3;
    x3=x2-(p2/fdiff(x2))
    p2=f(x3);
endwhile
endif
