p=1.56*10^6;
s=60*10^3;
r=10/100;
n=25;
i=1:25;
%straight method;
A=(p-s)/n;
acc=i*A;
value=p-acc;
figure
plot(i,value,i,acc)
legend("Depreciation curve","Reserve accumulation")
title("Straight line method")
xlabel('Years','FontSize',12,'FontWeight','bold','Color','b');
ylabel('Value','FontSize',12,'FontWeight','bold','Color','b');

%Diminishing Method
x=1-(s/p)^(1/n);
value1=p*(1-x).^i;
acc1=p-value1
figure
plot(i,value1,i,acc1)
legend("Depreciation curve","Reserve accumulation")
title("Diminishing-value method")
xlabel('Years','FontSize',12,'FontWeight','bold','Color','b');
ylabel('Value','FontSize',12,'FontWeight','bold','Color','b');

%Sinking Method
A2=(r/((1+r)^n-1))*(p-s);
acc2=A2*((1+r).^i-1)/r;
value2 =p-acc2;
figure
plot(i,value2,i,acc2)
legend("Depreciation curve","Reserve accumulation")
title("Sinking-value method")
xlabel('Years','FontSize',12,'FontWeight','bold','Color','b');
ylabel('Value','FontSize',12,'FontWeight','bold','Color','b');