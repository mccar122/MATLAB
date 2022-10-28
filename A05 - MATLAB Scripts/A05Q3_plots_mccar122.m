%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for A05 Problem 2: MATLAB Skills - Plots
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
x = [36.69, 43.57, 46.82, 52.16, 60.99, 65.14, 67.22, 76.87];
y1 = [116.91, 132.33, 146.31, 166.82, 175.07, 186.01, 205.9, 226.86];
y2 = [78.02, 89.66, 94.63, 111.08, 116.84, 132.83, 133.65, 148.09];

%% ____________________
%% FIGURE 1
plot(x,y1)

%% ____________________
%% FIGURE 2
subplot(2,1,1)
plot(x,y1)
subplot(2,1,2)
plot(x,y2)

%% ____________________
%% FIGURE 3
plot(x,y1,x,y2)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





