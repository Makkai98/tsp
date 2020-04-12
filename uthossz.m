function sum=uthossz(P,W)%x-varosok sorrende az utvonal szerint;W-varosok koordinatai
sum=0;
[n,m]=size(W);
for i=1:n-1
    sum=sum+sqrt((W(P(i),1)-W(P(i+1),1))^2+(W(P(i),2)-W(P(i+1),2))^2);
end;
sum=sum+sqrt((W(P(n),1)-W(P(1),1))^2+(W(P(n),2)-W(P(1),2))^2);%utolso varos es elso varos kozotti ut hossza