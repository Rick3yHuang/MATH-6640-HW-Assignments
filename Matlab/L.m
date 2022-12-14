function [p] = L(dt,dx,U0,U00)
    %x = linspace(0-dx,1+dx,1/dx+3);
    r = dt/dx;

    for j = 1:1/dx+1
       %xjr = x(j+2);
       %xj = x(j+1);
       %xjl = x(j);

       %Ujr = U0(j+3);
       Uj = U0(j+2);
       Ujl = U0(j+1);

       %sjr = minmod((U0(j+4)-U0(j+3))/dx,(U0(j+3)-U0(j+2))/dx);
       sj = minmod((U0(j+3)-U0(j+2))/dx,(U0(j+2)-U0(j+1))/dx);
       sjl = minmod((U0(j+2)-U0(j+1))/dx,(U0(j+1)-U0(j))/dx);

       %xMjr = xMid(j+1);
       %xMjl = xMid(j);

       %F = (1/2)*(double(f(Ul))+double(f(Ur))) + (1/2)*(Ul-Ur);

       Fl = Uj + sj*(dx/2);
       Fr = Ujl + sjl*(dx/2);

       p(j) = U00(j) - r*(Fl-Fr);
       
    end
end