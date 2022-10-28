%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This program models the relationship between sucrose concentration 
%(in molarity, M) and time (minutes).
%
% Assignment Information
%   Assignment:     14, Problem 5
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        002-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%The following code imports and preps the data to be used later in the code
data_table = readtable("Data_sucroseInversion.csv");
data = table2array(data_table);
time = data(:,1);
S_Concentration = data(:,2);



%% ____________________
%% DATA on SCALED PLOTS

%The following data creates 4 graphs using the same data but differently
%scaled axises

figure(1);
subplot(2,2,1)
plot(time,S_Concentration)
title("Linear X Linear Y")
xlabel("X")
ylabel("Y")
grid on

subplot(2,2,2)
semilogx(time,S_Concentration)
title("Logarithmic X Linear Y")
xlabel("Log(X)")
ylabel("Y")
grid on

subplot(2,2,3)
semilogy(time,S_Concentration)
title("Linear X Logarithmic Y")
xlabel("X")
ylabel("Log(Y)")
grid on

subplot(2,2,4)
loglog(time,S_Concentration)
title("Logarithmic X Logarithmic Y")
xlabel("Log(X)")
ylabel("Log(Y)")
grid on

sgtitle("Axis Scaling of Sucrose Data")

%% ____________________
%% LINEARIZATION CALCULATIONS

%This code creates a linear model based on the results of the graphs
x_linear = (time);
y_linear = log10(S_Concentration);
coeff_linear = polyfit(x_linear, y_linear, 1);
M = coeff_linear(1);
B = coeff_linear(2);

%% ____________________
%% GENERAL MODEL CALCULATIONS

%This code creates a model equation to compare against the measured data
m = M;
b = 10^(B); 
model= b * 10.^(m * time);


%% ____________________
%% LINEARIZATION FIGURE DISPLAY

%Plots the Model Line Prediction
figure(2);
plot(time, model,"r")
title("LINEARIZATION FIGURE")
xlabel("Time(min)")
ylabel("Predicted Sucrose Concentration (moles)")
legend("Model Line of Fit")


%% ____________________
%% GENERAL MODEL FIGURE DISPLAY

%Plots Measured Data and Modeled Data on same graph
figure(3);
plot(time, S_Concentration, "k", time, model, "r")
title("General Model Figure")
xlabel("Time (min)")
ylabel("Sucrose Concentration")
legend("Data", "Model Line of Fit")

%% ____________________
%% ALL TEXT DISPLAYS

fprintf("The function is a Exponetial Function with coefficients: \n B= %.2f \n b= %.2f \n M= %.2f \n m= %.2f \n", B,b,M,m)
fprintf("The function can be modeled by the equation: \n y=%.2f*10^(%.2f*x)\n", b,m)


%% ____________________
%% ANALYSIS

% -- Text displays from Command Window
%The function is a Exponetial Function with coefficients: 
%B= -0.23 
%b= 0.59 
%M= -0.03 
%m= -0.03 
%The function can be modeled by the equation: 
%y=0.59*10^(-0.03*x)

% -- Q1
%I feel justified in my model selection because when looking at the scaled
%axis the most linear line was found when the Y-axis was logged and the
%X-axis remained untouched. That is an indication of an Exponential
%Function. This was later confirmed when the Model Exponetial Function
%following the measured data well.

% -- Q2
%At 12 minutes: 0.258 M
%At 36 minutes: 0.049 M
%At 72 minutes: 0.004 M


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.