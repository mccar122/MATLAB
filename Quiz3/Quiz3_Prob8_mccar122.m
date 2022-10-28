%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%
%
% Assignment Information
%   Assignment:     Quiz 3, Problem 8
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

data_table = readtable("Quiz3_Prob8_Data_31429132.csv");
data = table2array(data_table);
height= data(:,1);
oscillation= data(:,2);

%% ____________________
%% DATA on SCALED PLOTS

figure(1)
subplot(2,2,1)
plot(height,oscillation)
title("Linear X Linear Y")
xlabel("X")
ylabel("Y")
grid on

subplot(2,2,2)
semilogx(height,oscillation)
title("Logarithmic X Linear Y")
xlabel("Log(X)")
ylabel("Y")
grid on

subplot(2,2,3)
semilogy(height, oscillation)
title("Linear X Logarithmic Y")
xlabel("X")
ylabel("Log(Y)")
grid on

subplot(2,2,4)
loglog(height,oscillation)
title("Logarithmic X Logarithmic Y")
xlabel("Log(X)")
ylabel("Log(Y)")
grid on



%% ____________________
%% LINEARIZATION CALCULATIONS

height_linear = log10(height);
oscillation_linear = log10(oscillation);
linear_coeffs = polyfit(height_linear, oscillation_linear, 1);



%% ____________________
%% GENERAL MODEL CALCULATIONS

m = linear_coeffs(1);
b = 10.^(linear_coeffs(2));
y_predict = b .* height.^(m);


%% ____________________
%% LINEARIZATION FIGURE DISPLAY

y_linear = height_linear * linear_coeffs(1) + linear_coeffs(2);

figure(2)
scatter(height_linear, oscillation_linear, "k")
hold on 
plot(height_linear, y_linear, "b")
xlabel("Log Height")
ylabel("Log Oscialltion")
title("Linerization Figure")
legend("Linearized Data", "Model of Best Fit")
hold off

%% ____________________
%% GENERAL MODEL FIGURE DISPLAY

figure(3)
scatter(height, oscillation, "k")
hold on
plot(height, y_predict, "b")
xlabel("Height")
ylabel("Oscillation")
title("General Model Figure")
legend("Data", "Line of Fit")
hold off

%% ____________________
%% ALL TEXT DISPLAYS

fprintf("The data can be modeled by the Power Equation: y = %.2f * x^ %.2f \n" , b, m)
fprintf("The linearized Coefficients are: m = %.2f and b = %.2f \n", linear_coeffs(1), linear_coeffs(2))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.