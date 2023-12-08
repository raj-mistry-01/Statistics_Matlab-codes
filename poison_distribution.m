n=input("Enter the number of trails :");
p=input("Enter the probability of success ");
lamda=n*p;
x=0:n;
for i=1:n+1
    P(i)=(exp(-lamda)*power(lamda,x(i)))/factorial(x(i));
end
fprintf("\nEnter your choice\n");
choice=input("Enter 1 for calculate P(x<x1)\nEnter 2 for calculate P(x<=x1)\nEnter 3 for calculate P(x>x1)\nEnter 4 for calculate P(x=>x1)\nEnter 5 for calculate P(x1<x<x2)\nEnter 6 for calculate P(x1<=x<=x2)\nEnter 7 for P(x=x1)");
switch choice
    case 1
        x1=input("Enter the value of x1 to calculate P(x<x1)");
        s=0;
        for i=1:x1
            s=s+P(i);
        end
        fprintf("P(x<x1)=%f",s);
         case 2
        x1=input("Enter the value of x1 to calculate P(x<=x1)");
        s=0;
        for i=1:x1+1
            s=s+P(i);
        end
        fprintf("P(x<=x1)=%f",s);
         case 3
        x1=input("Enter the value of x1 to calculate P(x>x1)");
        s=0;
        for i=1:x1+1
            s=s+P(i);
        end
        fprintf("P(x>x1)=%f",1-s);
         case 4
        x1=input("Enter the value of x1 to calculate P(x=>x1)");
        s=0;
        for i=1:x1
            s=s+P(i);
        end
        fprintf("P(x=>x1)=%f",1-s);
         case 5
        fprintf("Enter the value of x1 and x2 to calculate P(x1<x<x2)");
        x1=input("");
        x2=input("");
        s=0;
        for i=x1+2:x2
            s=s+P(i);
        end
        fprintf("P(x1<x<x2)=%f",s);
         case 6
        fprintf("Enter the value of x1 and x2 to calculate P(x1<x<x2)");
        x1=input("");
        x2=input("");
        s=0;
        for i=x1+1:x2+1
            s=s+P(i);
        end
        fprintf("P(x1=<x<=x2)=%f",s);
        case 7
        x1=input("Enter the value of x1");
        s=P(x1+1);
        fprintf("P(x<x1)=%f",s);
end
