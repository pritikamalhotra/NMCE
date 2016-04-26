clc
clear
iteration=0;
x0=input("Enter the value of x0:");%Enter the initial guess points
x1=input("Enter the value of x1:");
Precision=input("Enter precision:");% Enter the Precision
bisection(x0,x1,iteration,Precision);% Main gives call to bisection method