clc 
clear

% Define your augmented matrix here
a = [ 10 -7 3 5 6;
     -6 8 -1 -4 5;
      3 1 4 11 2;
      5 -9 -2 4 7];
    
[rows,columns]=size(a);
for j=1:rows-1
    for z=2:rows
        if a(j,j)==0
            t=a(1,:);a(1,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:rows
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for j=rows:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:rows
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,columns);
end
disp('Gauss-Jordan Method:');
a
x'
