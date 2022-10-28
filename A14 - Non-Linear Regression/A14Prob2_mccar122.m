%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A14 - Problem 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

data_table = readtable("Data_A14Prob1.csv");
data = table2array(data_table);
x1 = data(:,1);
y1 = data(:,2);
x2 = data(:,3);
y2 = data(:,4);

%% ____________________
%% Data Linearization Calculations

x1_linear = x1;
y1_linear = log10(y1);

x2_linear = log10(x2);
y2_linear = log10(y2);

data_set1_coeffs_linear = polyfit(x1_linear, y1_linear, 1);
data_set2_coeffs_linear = polyfit(x2_linear, y2_linear, 1);

m1_lin = data_set1_coeffs_linear(1);
b1_lin = data_set1_coeffs_linear(2);

m2_lin = data_set2_coeffs_linear(1);
b2_lin = data_set2_coeffs_linear(2);

m1_model = m1_lin;
b1_model = 10^(b1_lin);
m2_model = m2_lin;
b2_model = 10^(b2_lin);

data1_model = b1_model * 10.^(m1_model * x1);
data2_model = b2_model * x2.^(m2_model);


%% ____________________
%% Text Display

fprintf("Data set 1 is an Exponetial Function represented by the Linearized Equation: \n y = %.2f * 10^(x * %.2f) \n", b1_model, m1_model)
fprintf("Data set 2 is a Power Function represented by the Linearized Equation: \n y = %.2f * x^(%.2f) \n", b2_model, m2_model)


%% ____________________
%% Figure Display

subplot(1,2,1)
plot(x1, y1, "k", x1, data1_model, "r")
title("Data Set 1")
xlabel("X")
ylabel("Y")

subplot(1,2,2)
plot(x2, y2, "k", x2, data2_model, "r")
title("Data Set 2")
xlabel("X")
ylabel("Y")

%% ____________________
%% RESULTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







