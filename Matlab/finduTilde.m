function uTilde = finduTilde(xj,Uj,sj)
    syms x
    F = Uj + sj*(x - xj);
    uTilde = formula(F);
end