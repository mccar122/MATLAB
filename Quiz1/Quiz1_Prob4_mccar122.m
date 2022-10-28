%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Calculating Linear Fit vs Quaratic Fit
%
% Assignment Information
%   Assignment:     Exam 1, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

Data = readtable('Quiz1_Prob4_data_31429132.csv');
%imports the data into this script

%% ____________________
%% CALCULATIONS

App_Force = Data(:,1);
%selects the data from the csv file
T1_Delfection = Data(:,2);
%selects data from the csv file
y = table2array(T1_Delfection);
%makes the data into an array so it can be manipulated and calculated
x = table2array(App_Force);
%makes the data into an array so it can be manipulated and calculated
y_linear = 0.937*x + (-17.3);
%calculates linear model
y_Quadratic = 0.0097*(x.^2) + ((-0.029)*x) + (-0.847);
%calculates quadratic model
SEE_Linear = sqrt(sum((y - y_linear).^2)/(numel(x)));
%calculates SEE for linear model
SEE_Quadratic = sqrt(sum(((y - y_Quadratic).^2)/(numel(x))));
%calculates SEE for Quadratic Model

%% ____________________
%% FORMATTED FIGURE DISPLAYS
 %This code creates 2 graphs containing the data and models asked for 
subplot(2,1,1)
plot(x,y,'r',x,y_linear, 'b')
xlabel('Force Applied (N)')
ylabel('Deflection (mm)')
subplot(2,1,2)
plot(x,y, 'r', x,y_Quadratic, 'b')
xlabel('Force Applied (N)')
ylabel('Deflection (mm)')


%% ____________________
%% FORMATTED TEXT DISPLAYS

disp("Normalized SSE for the linear model: ")
disp(SEE_Linear)
disp("Normalized SSE for the quadratic model: ")
disp(SEE_Quadratic)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.