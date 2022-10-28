%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A14 - Problem 1
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
%% FORMATTED FIGURES

% Formatted Figure 1 - DATA SET 1

subplot(2,2,1)
plot(x1,y1)
title("Linear X Linear Y")
xlabel("X")
ylabel("Y")
grid on

subplot(2,2,2)
semilogx(x1,y1)
title("Logarithmic X Linear Y")
xlabel("Log(X)")
ylabel("Y")
grid on

subplot(2,2,3)
semilogy(x1, y1)
title("Linear X Logarithmic Y")
xlabel("X")
ylabel("Log(Y)")
grid on

subplot(2,2,4)
loglog(x1,y1)
title("Logarithmic X Logarithmic Y")
xlabel("Log(X)")
ylabel("Log(Y)")
grid on

sgtitle("Axis Scaling of Data Set 1")


% Formatted Figure 2 - DATA SET 2

subplot(2,2,1)
plot(x2,y2)
title("Linear X Linear Y")
xlabel("X")
ylabel("Y")
grid on

subplot(2,2,2)
semilogx(x2,y2)
title("Logarithmic X Linear Y")
xlabel("Log(X)")
ylabel("Y")
grid on

subplot(2,2,3)
semilogy(x2, y2)
title("Linear X Logarithmic Y")
xlabel("X")
ylabel("Log(Y)")
grid on

subplot(2,2,4)
loglog(x2,y2)
title("Logarithmic X Logarithmic Y")
xlabel("Log(X)")
ylabel("Log(Y)")
grid on

sgtitle("Axis Scaling of Data Set 2")


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







