fprintf("\n");
n=input("Enter the number of observations : ");
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
    fprintf("Enter y(%d):",i);
     y(i)=input("");
end
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
sumy2=0;
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumx2=sumx2+(x(i)*x(i));
    sumy2=sumy2+(y(i)*y(i));
    sumxy=sumxy+(x(i)*y(i));
end
fprintf("\n");
r=(n*sumxy-(sumx*sumy))/sqrt((n*sumx2-power(sumx,2))*(n*sumy2-power(sumy,2)));1
fprintf("Correlation cofficient r=%f",r);