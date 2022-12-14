function [Fl] = findFl(xj,Uj,sj,xjl,Ujl,sjl,xMjl,f)
    %syms x;

    %ul(x) = finduTilde(xj,Uj,sj);
    %ur(x) = finduTilde(xjl,Ujl,sjl);
    Fl = LFFlux(Uj + sj*(xMjl - xj),Ujl + sjl*(xMjl - xjl),f);
end