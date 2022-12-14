dt = 1/10000;
dx = 1/100;

xQ = linspace(0,1,1/dx+1).';

%xMid = linspace(-0.05,1.05,12).';

syms x;
y(x) = 1 + sin(2*pi*x);

f(x) = (1/2)*x^2;

pMUSCL = MUSCL2(dt,dx,1,y);

figure
hold on
plot(xQ,pMUSCL,'-','MarkerEdgeColor','k');
legend('MUSCL','Location','southeast')
hold off