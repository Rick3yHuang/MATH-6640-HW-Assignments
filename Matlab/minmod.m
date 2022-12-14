function [out] = minmod(a,b)
    if a >= 0 && b >= 0
        if a <= b
            out = a;
        else
            out = b;
        end
    elseif a <= 0 && b <=0
        if a <= b 
            out = b;
        else
            out = a;
        end
    else
        out = 0;
    end
end