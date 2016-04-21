clc
clear
A=[ 1 1 1 9; % A is a 3X3 matrix
    2 -3 4 13;
    3 4 5 40]
B=reshape(A',1,[]);% Reshaping A into a single row matrix B
C=A(1,:)*B(9)-A(3,:)*B(1);% Eliminating x variable leaving equation in y and z
D=A(1,:)*B(5)-A(2,:)*B(1);% Eliminating x variable leaving equation in y and z
% Now we have two equations in y and z
E=C-D;
y=E(4)/E(2)% We get the value of y 
z=(C(4)-C(2)*y)/C(3)% We get the value of z By substituting the value of y
x=(A(1,4)-A(1,3)*z-A(1,2)*y)/A(1,1)% We get the value of x By substituting the value of y and z