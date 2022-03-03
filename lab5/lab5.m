%Economic load dispatch neglecting losses using iterative technique
clc
clear

n=3;
b=[4 3 3.8];
g=[.008 .01 .007];
Pmax=[500 500 500];
Pmin=[80 80 80];
tol=.02;
PD=300
lmda=max(b)+.5; %set the lmda greater than the greatest beta

dp=2;
it=0;
while (abs(dp)>tol)
    it=it+1;
    if it>1
        lmda=lmda*(1+dp/2);
    end
for m=1:n
    P(m)=(lmda-b(m))/g(m);
    if P(m)< Pmin(m)
        P(m)=Pmin(m);
    elseif P(m)>Pmax(m)
        P(m)=Pmax(m);
    end
end
dp=(PD-sum(P))/PD;
end
lmda
P