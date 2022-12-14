function [p] = upWind(dt,dx,t,y)

    x = linspace(0,1,1/dx);
    U0 = [0; double(y(x)).'; -sin(3*pi*dx)];

    r = dt/dx;
    
        for i = 1:t/dt
            for j = 1:1/dx
               newU(j) = r*U0(j) + (1-r)*U0(j+1);
               
            end
            U0 = [newU(1/dx), newU, newU(1)];
            U0 = transpose(U0);
        end
    p = newU.';
end