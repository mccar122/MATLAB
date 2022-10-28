%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for A11 Problem 1: MATLAB Skills - Removing Loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SOLUTION WITH NO LOOP

vec = [40, -40, 2, 14, 34, 11, -29, 8, -39, -39];
%newvec = zeros(1,numel(vec));  % pre-allocate newvec with zeros
%for i = 1:numel(vec)
%    if vec(i) < -9 | vec(i) > 6
%        numerator = 3/(vec(i) - 4);
%        denominator = 5*vec(i)^2 - 7;
%    else
%        numerator = 8*vec(i)^2;
%        denominator = 6/vec(i) + 7/vec(i)^2;
%    end
%    newvec(i) = numerator/denominator;
%end
if vec(1:end) > 6 || vec(1:end) < -9
        numerator = 3 ./ (vec - 4);
        denominator = 5.*(vec).^2 - 7;
    else
        numerator = 8*(vec).^2;
        denominator = ((6 ./ (vec)) + (7 ./ ((vec).^2)));
    end
    newvec = numerator./denominator;


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.