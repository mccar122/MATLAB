%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for A08 Problem 2: MATLAB Skills - FOR Loop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FOR LOOP

M=3;
N=8;
S=1;
Z = [27, 5, 16, 20, 26, 19, 8, 18, 5, 5];
for i = length(Z)
    T= Z(i) - N;
    V= M * N + Z;
    S= T + S + V;
end
%%Iterations:  Enter the total number of iterations here:
% 10
%%Value of S:  Enter the final value of S here:
% 27




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.