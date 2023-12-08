fprintf("\n");
 choice = input( "Enter your choice:\n1:To calulate the discrete data mode enter 1:\n2:To calclulate frequency distribution  observation mode enter 2:\n3:To calculate frequncy class distribution mode enter 3:");
 switch choice
     case 1

n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
for i=1:n
    fprintf("Enter x(%d):",i);
    x(i)=input("");
end
for i=1:n
    f(i)=0;
    for j=1:n
        if x(j)==x(i)
            f(i)=f(i)+1;
        end
    end
end
max=f(1);
pos=1;
for i=2:n
    if f(i)>max
        max=f(i);
        pos=i;
    end
end
mode1=x(pos);
fprintf("Mode=%f",mode1);
     case 2
             fprintf("\n");

n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
    fprintf("Enter f(%d):",i);
     f(i)=input("");
end
max=f(1);
pos=1;
for i=2:n
    if f(i)>max
        max=f(i);
        pos=i;
    end
end
mode1=x(pos);
fprintf("Mode=%f",mode1);
     case 3
           fprintf("\n");
n=input("Enter the number of class : ");
h=input("Enter the height of class : ");
l=input("Enter the first term : ");
l1(1)=l;
for i=1:n
    fprintf("Enter f(%d):",i);
     f(i)=input("");
end
for i=2:n
    l1(i)=l1(i-1)+h;
end
max=f(1);
pos=1;
for i=2:n
    if f(i)>max
        max=f(i);
        pos=i;
    end
end
up=(f(pos)-f(pos-1))*h;
down=2*f(pos)-f(pos-1)-f(pos+1);
mode1=l1(pos)+(up/down);
fprintf("Mode=%f",mode1)
 end