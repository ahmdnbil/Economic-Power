k1=10^-4;
k2=2*10^5;
D=0.08;
a=(50:1:100)*10^-6;
Cr=k1./a;
Cf=k2*a*D;
Ctot=Cr+Cf;
Ctot_min=min(Ctot);
index=find(Ctot_min==Ctot);
 x_a=a(index);
 x=[x_a,x_a];
 y=[0,Ctot_min];
plot(a,Cr,a,Cf,a,Ctot)
hold on;
plot(x,y,'--b')
xlabel("cross section area(m^2)")
ylabel("cost ($)")
legend("Cost of power loss","Fixed cost","Total cost","Minimum cost")
