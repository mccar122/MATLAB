%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This Program will use non-linear regression to find the model for the 
%provided data set
%
% Assignment Information
%   Assignment:     A14, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        002-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
%Initializes the Data to be used in later parts of program
data_table = readtable("Data_problem4.csv");
data = table2array(data_table);
x = data(:,1);
y = data(:,2);

%% ____________________
%% PLOTS WITH AXIS SCALING
%Produces Plot with the 4 different Axis Scaling
figure(1);
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

sgtitle("Axis Scaling of Data Set")


%% ____________________
%% LINEARIZED MODEL

%%% DATA LINEARIZATION & MODEL

x_linear = log10(x);
y_linear = log10(y);
coeff_linear = polyfit(x_linear, y_linear, 1);
M = coeff_linear(1);
B = coeff_linear(2);

%%% TEXT DISPLAY

fprintf("The Data is a Power Function represented by the Linearized Equation \n y = %.2f * x^(%.2f) \n", b, m)

%%% FIGURE DISPLAY

figure(2);
plot(x,model,"r")
title("Problem 4 Data")
xlabel("X")
ylabel("Y")


%% ____________________
%% DETERMINE MODEL

%%% PARAMETER IDENTIFICATION

m = M;
b = 10^(B); 
model = b .* x.^(m);

%%% TEXT DISPLAY


%%% FIGURE DISPLAY

figure(3);
plot(x,y,"k",x,model,"r")
title("Problem 4 Data")
xlabel("X")
ylabel("Y")

%% ____________________
%% ANALYSIS




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.