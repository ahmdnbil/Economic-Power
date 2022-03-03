%input-output curve
p=10:100;
F=(40+4*p+0.012*p.^2)*(10^6);
plot(p,F)
title("Input-Output curve")
xlabel("Output power(MW)")
ylabel("Input fuel(Btu/h)")
hold on;
minimum=min(F);
maximum=max(F);
x1=[10,10];
x2=[100,100];
y1=[0,minimum];
y2=[0,maximum];
plot(x1,y1,'--b')
hold on
plot(x2,y2,'--b')
text(10,0,' P_m_i_n')
text(100,0,' P_m_a_x')

%Heat rate
p=10:100;
F=(40+4*p+0.012*p.^2)*(10^6);
hr=F./p;
figure
plot(p,hr)
title("Heat rate curve")
xlabel("Output power(MW)")
ylabel("Heat rate(Btu/MWh)")
x1=[10,10];
x2=[100,100];
y1=[0,hr(1)];
y2=[0,hr(91)];
hold on;
plot(x1,y1,'--r');
hold on;
plot(x2,y2,'--r')
text(10,0,' P_m_i_n')
text(100,0,' P_m_a_x')

%incremental fuel cost
p=10:100;
iFc=(4+.024*p)*(.12);
figure
plot(p,iFc)
title("Incremental fuel cost curve")
xlabel("Output power(MW)")
ylabel("Incremental fuel cost($/MWh)")
