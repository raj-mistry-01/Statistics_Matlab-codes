fprintf("\n");
 choice = input( "Enter your choice:\n1:To calulate the discrete data mean enter 1:\n2:To calclulate frequency distribution observation mean enter 2:\n3:To calculate frequncy class distribution mean enter 3:");
 switch choice
     case 1
         n=input("Enter the number of observations : ");
s=n/2;
b=mod(n,2);
fprintf("Enter the observations \n");
for i=1:n
    fprintf("Enter x(%d):",i);
    x(i)=input("");
    z=sort(x);
end
if (b==0)
        median=(z(s)+z(s+1))/2;
else
        median=z(s+(1/2));
end
fprintf(" meadian = %d",median);        
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
cf(1)=f(1);
for i=2:n
    cf(i)=cf(i-1)+f(i);
end
N=(cf(n)+1)/2;
pos=1;
for i=1:n
    if cf(i)<N
        pos=pos+1;
    else
        break;
    end
end
fprintf("\n");
meadian=x(pos)
fprintf("Meadian=%f",meadian);
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
cf(1)=f(1);
for i=2:n
    cf(i)=cf(i-1)+f(i);
end
N=(cf(n))/2;
pos=1;
for i=1:n
    if cf(i)<N
        pos=pos+1;
    else
        break;
    end
end
fprintf("%d",pos);
fprintf("\n");
meadian=l1(pos)+(((N)-cf(pos-1))/f(pos))*h;
fprintf("Meadian=%f",meadian);
 end