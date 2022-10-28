%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Class 1 D Assignment A05 plotting Delay times in reference to generation
%
% Assignment Information
%   Assignment:     A05, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
data = readtable('Delay_Data.csv');
%%This imports the data from the CSV
data.Properties.VariableNames = {'Generation' 'Gate Delay' 'Interconnect Delay'};
%%This renames the Column Titles to make it easier for reader
Gen= data{:,1};
I_D= data{:,3};
G_D= data{:,2};
%%This creates variables to be plotted

%% ____________________
%% CALCULATIONS

I_Delay_Model= 0.36 * exp(0.47 * Gen);
%%Creates trendline for Interconnect Delay times
G_Delay_Model= 25.41 * exp(-0.34 * Gen);
%%Creates trendline for Gate Delay times
Delay_Sum= I_D + G_D;
Min_Delay= min(Delay_Sum);


%% ____________________
%% FIGURE DISPLAY

plot(Gen, I_D)
hold on
plot(Gen, G_D)
plot(Gen, I_Delay_Model)
plot(Gen, G_Delay_Model)
plot(Gen, Delay_Sum)
hold off
%%Plots multiple Lines on a single graph 

%% ____________________
%% TEXT DISPLAY

title('Interconnect Delay and Gate Delay')
%%Creates Title for Graph
xlabel('Generation Number')
%%Creates X-Axis Title
ylabel('Delay in Picoseconds (ps)')
%%Creates Y-Axis Title
legend('Interconnect Delay', 'Gate Delay', 'Interconnect Delay Trendline',...
    'Gate Delay Trendline', 'Sum of Delay Time')
%%Creates Legend/Key for User to indentify different lines

%% ____________________
%% RESULTS
fprintf('The mimumum delay time is %.3f picoseconds.', Min_Delay)
%%The mimumum delay time is 8.492 picoseconds.

%% ____________________
%% ANALYSIS

% -- 1.
% Generation 7 has the minimum Gate Delay time (2.3464 ps). Generation 1
% has the minimum Interconnect Delay time (0.97039 ps). This is observed
% when importing the CSV. In that 7x3 table, the user can observe the data
% values. This is later confirmed when using the trendline equations.

% -- 2.
% Generation 5 has the smallest combined delay time (8.4916 ps). This due
% to the fact that this is a combined data set of the 2 individual delay
% times. When combining the delay times of the Interconnect and Gate, the
% user can identify that the smallest combined time is during Generation 5.

% -- 3.
% The raw data would be most helpful in testing and/or proving a theory or
% concept. It allows the user to have true figures to present to others.
% The model data is helpful when trying to predict future results or test
% whether a trend is viable or not.



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.