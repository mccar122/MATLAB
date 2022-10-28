%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This Code determines whether or not profit target was met in 29 days
%
% Assignment Information
%   Assignment:     Exam 2, Problem 2
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

data_table = readtable("Quiz2_currencyExchange_31429132.csv");
conversion_rate = table2array(data_table);
ppm = 2.76;
mpd = 29621;
ppm_Euro = 2.76* conversion_rate;
sum = 0;
count = 1;


%% ____________________
%% LOOP

while sum < 866000
    sum = sum + (mpd * ppm_Euro(count));
    count = count + 1;
end


%% ____________________
%% TEXT DISPLAYS

fprintf("Predicted revenue of %.2f will aquired in %.0f days \n", sum, (count-1))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.