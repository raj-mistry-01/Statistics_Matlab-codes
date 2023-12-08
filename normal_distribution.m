fprintf("\n")
m=input("Enter the mean of normal distribution");
s=input("Enter the sigma of normal distribution");
syms x;
f=(exp(-0.5*power((x-m)/s,2)))/(s*sqrt(2*pi));
fprintf("\nEnter your choice\n");
choice=input("Enter 1 for calculate P(x<x1) or P(x<=1)\nEnter 2 for calculate P(x>x1) or P(x=>x1)\nEnter 3 for calculate P(x>x1)");
switch choice
    case 1
        x1=input("Enter the value of x1 to calculate P(x<x1) or P(x<=1)");
        s=eval(int(f,x,-inf,x1));
        fprintf("P(x<x1) Or P(x<=x1)=%f",s);
         case 2
        x1=input("Enter the value of x1 to calculate P(x>x1) or P(x=>x1)");
        s=eval(int(f,x,x1,inf));
        fprintf("P(x>x1) Or P(x=>x1)=%f",s);
         case 3
        fprintf("Enter the value of x1 and x2 to calculate P(x1<x<x2) or P(x1<=x<=x2)");
        x1=input("");
        x2=input("");
        s=eval(int(f,x,x1,x2));
        fprintf("P(x1<x<x2) Or P(x1<=x<=x2)=%f",s);
end