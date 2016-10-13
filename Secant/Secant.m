clc
clear
iteration=0;
initialguesspoint_1=input("Enter the value of initialguesspoint_1:");%Initial guess of variables
initialguesspoint_2=input("Enter the value of initialguesspoint_2:");
Precision=input("Enter precision:");
fvalue_initialguesspoint1=fsolv(initialguesspoint_1);% Is the function while in which function is defined
fvalue_initialguesspoint2=fsolv(initialguesspoint_2);
if(fvalue_initialguesspoint1*fvalue_initialguesspoint2>0)
"no root between these points"
else
while(abs(initialguesspoint_2-initialguesspoint_1)>Precision)
    root_value=initialguesspoint_2-[((initialguesspoint_2-initialguesspoint_1)/(fvalue_initialguesspoint2-
    fvalue_initialguesspoint1))*fvalue_initialguesspoint2];
    root_value
    iteration=iteration+1;
    fvalue_root=fsolv(root_value);
    initialguesspoint_1=initialguesspoint_2;
    initialguesspoint_2=root_value;
    fvalue_initialguesspoint1=fvalue_initialguesspoint2; 
    fvalue_initialguesspoint2=fvalue_root; 
endwhile
endif
