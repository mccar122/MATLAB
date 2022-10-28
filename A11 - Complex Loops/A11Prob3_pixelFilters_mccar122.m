function A11Prob3_pixelFilters_mccar122
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This program will apply filters to data to find different median values
%and result in different tables
%
% Function Call
%A11Prob3_pixelFilters_mccar122
%
% Input Arguments
%There are no input or output arguements
%
% Output Arguments
%There are no input or output arguements
%
% Assignment Information
%   Assignment:     A11, Problem 3
%   Author:         Conor, mccar122@purdue.edu%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

rawdata = readtable("Data_pixels.csv"); %This imports the data
data = table2array(rawdata); %This makes it an array so we manipulate it
[NRows , NCols] = size(data); %This sets up the parameters to be used later
filter_1 = data; %makes a copy of original data that will be editted later
filter_2 = data; %same as above
filter_3 = data; %same as above
counter_1 = 0;
counter_2 = 0;
counter_3 = 0;

%% ____________________
%% CALCULATIONS

%Filter 1: start at index (2,2), move left to right from top to bottom, 
%           and end at index (last row - 1, last column - 1)

for row = 2:NRows-1
    for col = 2:NCols-1
        counter_1 = counter_1 + 1;
        filter_1(row, col) = median(filter_1(row-1:row+1, col-1:col+1), 'all');
    end
end

%Filter 2: start at index (last row - 1, last column - 1), move right to 
%           left from bottom to top, and end at index (2,2)

for row = NRows-1:-1:2
    for col = NCols-1:-1:2
        counter_2 = counter_2 + 1;
        filter_2(row, col) = median(filter_2(row-1:row+1, col-1:col+1), 'all');
    end
end

%Filter 3: start at index (2,2), move top to bottom from left to right, and 
%           end at index (last row - 1, last column - 1)

for col = 2 :(col-1)
    for row = 2:(row-1)
        counter_3 = counter_3 + 1;
        filter_3(row, col) = median(filter_3(row-1:row+1, col-1:col+1), 'all');
    end
end

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

subplot(2,2,1)
heatmap(data)
title("Original Dataset")
subplot(2,2,3)
heatmap(filter_1)
title("Filter 1")
subplot(2,2,2)
heatmap(filter_2)
title("Filter 2")
subplot(2,2,4)
heatmap(filter_3)
title("Filter 3")


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



