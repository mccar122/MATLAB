%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for Quiz 3 - Problem 7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
linX = [1.080, 1.269, 1.437, 1.570, 1.765, 1.928, 2.082, 2.281, 2.483, 2.651];
linY = [1.327, 1.703, 2.040, 2.372, 2.713, 3.068, 3.426, 3.750, 4.130, 4.446];
x = 286.7;

%% ____________________
%% CALCULATIONS

% Part A. Calculate the linearized coefficients M and B. Store the 
% coefficient values in a 1x2 vector variable named linCoefs 
linCoefs = polyfit(linX, linY, 1);


% Part B. Determine the function parameters m and b. 
m = linCoefs(1);
b = linCoefs(2);
M= m;
B = 10^b;

% Part C. Calculate the predicted value of y at the given x value in the
% instruction text
y_pred = B * x^(M);



%% DISPLAY for GRADESCOPE

fprintf('Part A:\n')
fprintf('M = %.5f\n',m)
fprintf('B = %.4f\n',b)
fprintf('\nPart B:\n')
fprintf('m = %.5f\n',M)
fprintf('b = %.5f\n',B)
fprintf('\nPart C:\n')
fprintf('y_pred = %.2f\n',y_pred)



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.