dt = 1/100000;
dx = 1/1000;

xQ = linspace(0,1,1/dx+1).';

%xMid = linspace(0-(dx/2),1+(dx/2),1/dx+2).';

syms x;
y(x) = piecewise((0 <= x) & (x < (1/3)),-sin(3*pi*x),((1/3) <= x) ...
    & (x <= (2/3)),1,((2/3) <= x) & (x <= 1),0);

f(x) = x;

exactf = y(x+10);

pexact = double(y(xQ)).';

%pcenterDiff = centerDiff(10^(-5),10^(-2),10,y);

%pupWind = upWind(10^(-5),10^(-2),10,y);

%pLaxF = LaxF(10^(-5),10^(-2),10,y);

%pLaxW = LaxW(10^(-5),10^(-2),10,y);

%pBeamWarming = BeamWarming(10^(-5),10^(-2),10,y);

%pMacCormack = MacCormack(10^(-5),10^(-2),10,y);

pMUSCL = MUSCL(dt,dx,10,y);

figure
hold on
plot(xQ,pexact,'-','MarkerEdgeColor','b');
%plot(xQ,pcenterDiff,'-','MarkerEdgeColor','r');
%plot(xQ,pupWind,'-','MarkerEdgeColor','g');
%plot(xQ,pLaxF,'-','MarkerEdgeColor','c');
%plot(xQ,pLaxW,'-','MarkerEdgeColor','m');
%plot(xQ,pBeamWarming,'-','MarkerEdgeColor','y');
%plot(xQ,pMacCormack,'-','MarkerEdgeColor','k');
plot(xQ,pMUSCL,'-','MarkerEdgeColor','k');
%legend('Exact Solution','Center Difference Scheme','Up Wind Scheme', ...
    %'Lax-Friedrichs Scheme','Lax-Wendroff Scheme','Beam-Warming Scheme', ...
    %'MacCormack Scheme','Location','southeast');
legend('Exact Solution','MUSCL','Location','southeast')
hold off