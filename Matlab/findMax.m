function [M] = findMax(func,x1,x2)
    syms x
    func(x) = func(x);
    %specify resolution of the evaluation
    dx = 0.0001;
    %Create a vector of x values based on the interval of evaluateion and
    %resolution specifications
    x = x1: dx : x2;
    %Calculate f(x) values
    for i = 1:length(x)
    fx(i) = func(x(i));
    end
    %Find the magnitude and index of the maximum f(x) value and print the
    %maximum magnitude to the command window
    [M,idx] = max(fx);
end