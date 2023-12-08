fprintf("\n");
 choice = input( "Enter your choice:\n1:To calulate the discrete data meanenter 1:\n2:To calclulate frequency distribution  observation mean enter 2:\n3:To calculate frequncy class distribution mean enter 3:");
 switch choice
     case 1
          n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
sumx=0;
for i=1:n
    fprintf("Enter x(%d):",i);
    x(i)=input("");
    sumx=sumx+x(i);
end
meanx=sumx/n;
fprintf("\n");
fprintf("Mean =%f",meanx);
    case 2
           fprintf("\n");
n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
sumf=0;
sumxf=0;
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
    fprintf("Enter f(%d):",i);
     f(i)=input("");
    sumf=sumf+f(i);
    sumxf=sumxf+(x(i)*f(i));
end
meanx=sumxf/sumf;
fprintf("\n");
fprintf("Mean =%f",meanx);
     case 3
         fprintf("\n");
n=input("Enter the number of class : ");
h=input("Enter the height of class : ");
l=input("Enter the first term : ");
sumf=0;
sumxf=0;
for i=1:n
      l2=l+h;
      x(i)=(l+l2)/2;
    fprintf("Enter f(%d):",i);
     f(i)=input("");
     l=x(i)+h/2;
    sumf=sumf+f(i);
    sumxf=sumxf+(x(i)*f(i));
end
meanx=sumxf/sumf;
fprintf("\n");
fprintf("Mean =%f",meanx);
end