clc
clear
iteration=0;
x0=input("Enter the value of x0:");
x1=input("Enter the value of x1:");
p0=fsolv(x0);
p1=fsolv(x1); 
if(p0*p1>0)
"no root between these points"
endif
while(abs(x1-x2)>0.00001)
    x3 = (x1 +x2)/2;
    x3
    iteration=iteration+1;
    p3=fsolv(x3);
    if (p1 * p3 < 0)
        x2 = x3;
        p2 = p3;
     else
     x1 = x3;
     p1 = p3;
    end
end