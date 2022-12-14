function [Fr] = findFr(xj,Uj,sj,xjr,Ujr,sjr,xMjr,f)
    %syms x;

    %ul(x) = finduTilde(xjr,Ujr,sjr);
    %ur(x) = finduTilde(xj,Uj,sj);
    Fr = LFFlux(Ujr + sjr*(xMjr - xjr),Uj + sj*(xMjr - xj),f);
end