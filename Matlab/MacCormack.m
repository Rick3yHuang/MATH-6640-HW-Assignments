function [p] = MacCormack(dt,dx,t,y)

    x = linspace(0,1,1/dx);
    U0 = [0; double(y(x)).'; -sin(3*pi*dx)];
    
    r = dt/dx;
    
        for i = 1:t/dt
            for j = 1:1/dx
                
                midU(j) = U0(j+1) - r*(U0(j+2)-U0(j+1));
               
            end
            U0 = [midU(1/dx), midU, midU(1)];
            U0 = transpose(U0);
        end

        midU = [midU(1/dx), midU, midU(1)];
        midU = transpose(midU);

        for i = 1:t/dt
            for j = 1:1/dx
                
                newU(j) = (U0(j+1) + midU(j+1))/2 - (r/2)*(midU(j+1)-midU(j));
               
            end
            midU = [newU(1/dx), newU, newU(1)];
            midU = transpose(U0);
        end
    p = newU.';
end