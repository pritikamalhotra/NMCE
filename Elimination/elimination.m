clc 
clear

% Define augemented matrix here
a = [ 10 -7 3 5 6;
     -6 8 -1 -4 5;
      3 1 4 11 2;
      5 -9 -2 4 7];
    
[rows,columns]=size(a); % Rows and Columns of matrix
for j=1:rows-1
    for z=2:rows
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:rows
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
x=zeros(1,rows);
for s=rows:-1:1
    c=0;
    for k=2:rows
        c=c+a(s,k)*x(k);
    end
    x(s)=(a(s,columns)-c)/a(s,s);
end
disp('Gauss Elimination Method:');
a
x'
