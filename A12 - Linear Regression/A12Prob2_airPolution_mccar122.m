function A12Prob2_airPolution_mccar122
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This program will attempt to perform linear regression to determine the
%correlation between CO2 and SF6
%
% Function Call
%A12Prob2_airPolution_mccar122
%
% Input Arguments
%There are no input arguements
%
% Output Arguments
%There are no output arguements
%
% Assignment Information
%   Assignment:     A12, Problem 2
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%Imports Data for CO2
CO2_Data = readmatrix("Data_NOAA_ESRL_co2_trend_1980-2020.csv");
CO2_dec = CO2_Data(:,3);
CO2_avg = CO2_Data(:,4);

%Imports Data for SF6
SF6_Data = readmatrix("Data_NOAA_ESRL_sf6_trend_1997-2020.csv");
SF6_dec = SF6_Data(:,3);
SF6_avg = SF6_Data(:,4);


%% ____________________
%% CALCULATIONS

%Sets up base variables to be used later
CO2_Coeffs = polyfit(CO2_dec, CO2_avg, 1);
CO2_mean = (sum(CO2_avg) / numel(CO2_avg));

SF6_Coeffs = polyfit(SF6_dec, SF6_avg, 1);
SF6_mean = (sum(SF6_avg) / numel(SF6_avg));

%% ____________________
%% PREDICTION CALCULATIONS

%Regression Calculations for CO2
CO2_PV = CO2_Coeffs(1) * CO2_dec + CO2_Coeffs(2);
CO2_SSE = sum((CO2_avg - CO2_PV).^2);
CO2_SST = sum((CO2_avg - CO2_mean).^2);
CO2_R_Squared = 1 - (CO2_SSE / CO2_SST);

%Regression Calculations for SF6
SF6_PV = SF6_Coeffs(1) * SF6_dec + SF6_Coeffs(2);
SF6_SSE = sum((SF6_avg - SF6_PV).^2);
SF6_SST = sum((SF6_avg - SF6_mean).^2);
SF6_R_Squared = 1 - (SF6_SSE / SF6_SST);

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
%Prints the informational statistics for user to read 
fprintf("The Equation for the line of fit for the CO2 data is y = %.2f * x + %.2f \n", CO2_Coeffs(1), CO2_Coeffs(2))
fprintf("CO2 SSE: %.2f CO2 SST: %.2f CO2 R^2: %.2f \n", CO2_SSE, CO2_SST, CO2_R_Squared)
fprintf("The Equation for the line of fit for the SF6 data is y = %.2f * x + %.2f \n", SF6_Coeffs(1), SF6_Coeffs(2))
fprintf("SF6 SSE: %.2f SF6 SST: %.2f SF6 R^2: %.2f \n", SF6_SSE, SF6_SST, SF6_R_Squared)

%creates a graph representing the data in distinct colours 
plot(CO2_dec, CO2_avg, "k", SF6_dec, SF6_avg, "b", CO2_dec, CO2_PV, "y", SF6_dec, SF6_PV, "r")
xlabel("Years")
ylabel("Concentration")
legend("CO2 Data", "SF6 Data", "CO2 Line of Fit", "SF6 Line of Fit")
end

%% ____________________
%% RESULTS

%Results are found in the Command Window
%The Equation for the line of fit for the CO2 data is y = 1.81 * x + -3249.92 
%CO2 SSE: 3320.55 CO2 SST: 227784.78 CO2 R^2: 0.99 
%The Equation for the line of fit for the SF6 data is y = 0.28 * x + -546.99 
%SF6 SSE: 8.51 SF6 SST: 973.75 SF6 R^2: 0.99 


%% ____________________
%% ANALYSIS

%% -- Q1
% We can assume the models are very accurate. Both of their R^2 values are
% in the upper 90s with the CO2 R^2 being 0.99 and the SF6 R^2 being 0.99.
% This indicates the model represents the data extremely well near
% perfectly. 

%% -- Q2
% The SF6 has a marginally higher R^2 Value but I would argue that 


%% -- Q3
% Based on the model the CO2 level in 1950 would be 279.58 and the CO2
% level in 2000 would be 370.08 and in 2050 the CO2 level would be 460.58


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



