function [F] = LFFlux(Ul,Ur,f)
    F = (1/2)*(double(f(Ul))+double(f(Ur))) + (1/2)*(Ul-Ur);
end