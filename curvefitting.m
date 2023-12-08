n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
     fprintf("Enter y(%d):",i);
     y(i)=input("");
end
sumx=0;
sumx2=0;
sumx3=0;
sumx4=0;
sumy=0;
sumxy=0;
sumx2y=0;
sumlny=0;
sumxlny=0;
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumx2=sumx2+(x(i)*x(i));
    sumx3=sumx3+(x(i)*x(i)*x(i));
    sumx4=sumx4+(x(i)*x(i)*+x(i)*x(i));
    sumxy=sumxy+(x(i)*y(i));
    sumx2y=sumx2y+((x(i)*x(i)*y(i)));
    sumlny=sumlny+log(y(i));
    sumxlny=sumxlny+(x(i)*log(y(i)));
end
 choice = input( "Enter your choice:\n1:To fit the linear curve y=ax+b enter 1:\n2:To fit the Quadratic curve y=a+bx+cx2  enter 2:\n3: To fit the exponetional curve y=a*e^(bx)  enter 3:");
 switch choice
     case 1
        a = [n sumx; sumx sumx2];
        A = inv(a);
        B= [sumy ; sumxy];
        X = A*B;
        fprintf("The appropriate of curve fit to the data is y=%fx+%f",X(2),X(1));
    case 2
        a = [n sumx sumx2; sumx sumx2 sumx3;sumx2 sumx3 sumx4];
        A = inv(a);
        B= [sumy ; sumxy ;sumx2y];
        X = A*B;
        fprintf("The appropriate of curve fit to the data is y=(%f)x^(2)+(%f)x+(%f)",X(3),X(2),X(1));
     case 3
        a = [n sumx; sumx sumx2];
        A = inv(a);
        B= [sumlny ; sumxlny];
        X = A*B;
        a1=exp(X(1));
        fprintf("The appropriate of curve fit to the data is y=%fe^(%fx)",a1,X(2));
 end