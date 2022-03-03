%Economic Dispatch-neglecting losses
clc
clear all
beta=[4 3 3.8];
gama=[.004 .005 .0035];
demand=1500;
pmax=[500 500 500];
pmin=[80 80 80];
n=length(beta);

num=0;
den=0;
for i=1:n
    num=num+beta(i)/(2*gama(i));
    den=den+1/(2*gama(i));
end

d=zeros(n);
redisp=1;
while redisp==1
    redisp=0;
lamda=(demand+num)/den;
for j=1:n
    if d(j)==0  
    p(j)=(lamda-beta(j))/(2*gama(j));
    if p(j)> pmax(j) || p(j)< pmin(j)
        redisp=1;
        d(j)=1;
    if p(j)> pmax(j)
        p(j)= pmax(j);
    elseif p(j)< pmin(j)
        p(j)=pmin(j);
    end
    demand=demand-p(j);
        num=num-beta(j)/(2*gama(j));
    den=den-1/(2*gama(j));
    end
end
    
end
end

%Display result
output_power=p %power of each plant
sum=sum(p) %sum of the power
lamda

