n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
sumy2=0;
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
     fprintf("Enter y(%d):",i);
     y(i)=input("");
end
for i=1:n
    sumx=sumx+x(i);
     sumx2=sumx2+(x(i)*x(i));
     sumy=sumy+y(i);
     sumxy=sumxy+(x(i)*y(i));
     sumy2=sumy2+(y(i)*y(i));
end
meany=mean(y);
meanx=mean(x);
byx=(n*sumxy-(sumx*sumy))/(n*sumx2-(sumx*sumx));
bxy=(n*sumxy-(sumx*sumy))/(n*sumy2-(sumy*sumy));
choice = input( "Enter your choice:\n1:for the regression line y on x enter 1:\n2:for the regression line x on y enter 2:");
 switch choice
     case 1
fprintf("The regression line on y on x\n");
fprintf("(y-%f)=%f(x-%f)",meany,byx,meanx);
     case 2
fprintf("The regression line on x on y\n");
fprintf("(x-%f)=%f(y-%f)",meanx,bxy,meany);
 end


