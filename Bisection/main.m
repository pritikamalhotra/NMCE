clc
clear
iteration=0;
initialguesspoint_1=input("Enter the value of initialguesspoint_1:");%Enter the initial guess points
initialguesspoint_2=input("Enter the value of initialguesspoint_2:");
Precision=input("Enter precision:");% Enter the Precision
% Call to Bisection function
[x,y]=bisection(initialguesspoint_1,initialguesspoint_2,iteration,Precision);
% Plot the solution
plot(x,y);
title("Bisection-plot");
xlabel('Roots');
ylabel('Iterations');
