function [out1] = Summer_2021_Q2_translate(in1,in2)
%This is the calculation function for A09 Q2
%   This code runs a series of if statements to determine output value
if in1 > 24
    out1 = -11;
end
if (in2 < 1 )
    out1 = -888;
end
x = in1 + in2;
if x > 29 && x < 45
    out1 = 2*x;
else
    out1 = 0.5*x;
end
disp("Out 1:")
disp(out1)
end


