function [p] = MUSCL(dt,dx,t,y)

    %x = linspace(0-dx,1+dx,1/dx+3);
    x0 = linspace(0,1,1/dx+1);
    U00 = double(y(x0)).';
    U0 = [0; 0; double(y(x0)).'; -sin(3*pi*dx);-sin(6*pi*dx)];
    for i = 1:t/dt
        U11 = L(dt,dx,U0,U00).';
        U1 = [U11(1/dx);U11(1/dx+1);U11;U11(1);U11(2)];
        U22 = L(dt,dx,U1,U11).';
        newU = (1/2)*(U00 + U22);
        U00 = newU;
        U0 = [newU(1/dx);newU(1/dx+1); newU; newU(1);newU(2)];
    end
    p = newU.';
end