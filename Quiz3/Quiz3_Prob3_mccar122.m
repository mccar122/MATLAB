%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for Quiz 3 - Problem 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

data_table = readtable("Quiz3_Prob3_Data_31429132.csv");
data = table2array(data_table);
x = data(:,1);
y = data(:,2);

%% ____________________
%% PART A

figure(1)
subplot(2,2,1)
plot(x,y)
title("Linear X Linear Y")
xlabel("X")
ylabel("Y")
grid on

subplot(2,2,2)
semilogx(x,y)
title("Logarithmic X Linear Y")
xlabel("Log(X)")
ylabel("Y")
grid on

subplot(2,2,3)
semilogy(x, y)
title("Linear X Logarithmic Y")
xlabel("X")
ylabel("Log(Y)")
grid on

subplot(2,2,4)
loglog(x,y)
title("Logarithmic X Logarithmic Y")
xlabel("Log(X)")
ylabel("Log(Y)")
grid on



%% ____________________
%% PART B

x_linear = log10(x);
y_linear = log10(y);
coeffs = polyfit(x_linear, y_linear, 1);
m_linear = coeffs(1);
b_linear = coeffs(2);
m_model = m_linear;
b_model = 10^(b_linear);
data_model = b_model * x.^(m_model);

figure(2)
scatter(x,y,"k")
hold on
plot(x, data_model, "b")
xlabel("x")
ylabel("Y")
title("Linearized Data")
Legend("Data", "Line of Fit")



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.