fprintf("\n");
n=input("Enter the number of observations : ");
fprintf("Enter the observations \n");
for i=1:n
    fprintf("Enter x(%d):",i);
     x(i)=input("");
     fprintf("Enter y(%d):",i);
     y(i)=input("");
end
summx=0;
x1=sort(x,'descend');
     i=1;
     while i<=n
         t=1;
         for j=i+1 : n
             if x1(j)==x1(i)
                 t=t+1;
             end
         end
         summx=summx+(t*(t*(t)-1));
         if t~=1 
             m= i+t-1;
             a=i:m;
             for k=i:m
                 rx1(k)=mean(a);
             end
             i=i+t;
         else
             rx1(i)=i;
             i=i+1;
         end
     end
     for i=1:n
         for j=1:n
             if x(i)==x1(j)
                 rx(i)=rx1(j);
             end
         end
     end
     y1=sort(y,'descend');
     i=1;
     summy=0;
     while i<=n
         t=1;
         for j=i+1 : n
             if y1(j)==y1(i)
                 t=t+1;
             end
         end
         summy=summy+(t*(t*(t)-1));
         if t~=1 
             m= i+t-1;
             a=i:m;
             for k=i:m
                 ry1(k)=mean(a);
             end
             i=i+t;
         else
             ry1(i)=i;
             i=i+1;
         end
     end
     for i=1:n
         for j=1:n
             if y(i)==y1(j)
                 ry(i)=ry1(j);
             end
         end
     end
     sumd2=0;
     for i=1:n
         d(i)=rx(i)-ry(i);
         d2(i)=d(i)*d(i);
         sumd2=sumd2+d2(i);
     end
     AF=1/12*(summx+summy);
     r=1-6*((sumd2+AF)/(n*(n*n-1)));
     fprintf("The spearman's rank correlation cofficient  = %f",r);