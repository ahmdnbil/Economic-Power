%Economic load dispatch neglecting losses using iterative technique
clc
clear all
 
n=input('number of units= ');
b=input('Beta='); %beta
g=input('2*Gamma='); %gamma

%limitions of each power plant
Pmin=input('Pmin=');
Pmax=input('pmax');
tol=input('Tolerance in per unit=');
PD=input('PD= ');
lmda=max(b)+.5; %set lmda greater than the greatest beta of all plants
 
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
