%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Predict Power Output
%
% Assignment Information
%   Assignment:     Exam 3, Problem 2
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

data_table = readtable("Quiz3_Prob2_Data_31429132.csv");
data = table2array(data_table);


%% ____________________
%% LINEAR REGRESSION CALCULATIONS

Wind_Speed = data(:,1);
Power_Output = data(:,2);
coeffs = polyfit(Wind_Speed, Power_Output,1);
Predicted_Output = coeffs(1)*Wind_Speed + coeffs(2);


%% ____________________
%% PART A - FIGURE

scatter(Wind_Speed, Power_Output, "k")
hold on
plot(Wind_Speed, Predicted_Output, "b")
xlabel("Wind Speed")
ylabel("Power Output (kWh)")
title("Power Output based on Wind Speed")
legend("Data", "Model of Best Fit")
hold off


%% ____________________
%% PART B - PREDICTION CALCULATIONS

Prediction_1 = 34.1 * coeffs(1) + coeffs(2);
Prediction_2 = 45.1 * coeffs(1) + coeffs(2);



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.