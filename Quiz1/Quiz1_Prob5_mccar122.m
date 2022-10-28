%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%The goal of this script is to determine the edibility of a tomato
%
% Assignment Information
%   Assignment:     Exam 1, Problem 5
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked alone on this problem and only used resourses
%        that meet academic integrity expectations.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% There is no INITIALIZATION section. The variable "tomato_gray" is already
% in your workspace. Use that variable in your calculations.

%% ____________________
%% CALCULATIONS

tomato_grey_SD = std(tomato_gray('all'));
%this finds the standard deviation 
if tomato_grey_SD < 0.054
    fprintf("Color standard deviation is %.2f. Sell as whole fruit", tomato_grey_SD)
elseif tomato_grey_SD > 0.054 && tomato_grey_SD < 0.059
    fprintf("Color standard deviation is %.2f. Sell for food processing.", tomato_grey_SD)
elseif tomato_grey_SD > 0.059
    fprintf("Color standard deviation is %.2f. This tomato cannot be used for human consumption.", tomato_grey_SD)
end


%% ____________________
%% FORMATTED TEXT DISPLAYS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.