clc
clear
iteration=0;
x0=input("Enter the value of x0:");
x1=input("Enter the value of x1:");
Precision=input("Enter precision:");
p0=fsolv(x0);% Function is defined in fsolv
p1=fsolv(x1); 
if(p0*p1>0)
"no root between these points:"
else
while(abs(x1-x0)> Precision)
    x2 = (x1 +x0)/2;
    x2
    iteration=iteration+1;
    p2=fsolv(x2);
    if (p0 * p2 < 0)
        x1 = x2;
        p1 = p2;
     else
     x0 = x2;
     p0 = p2;
    end
end
endif