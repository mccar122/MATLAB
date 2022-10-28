%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% We are sorting and understanding landslide data from around the world.
%
% Assignment Information
%   Assignment:     A06, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        ###-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

Data= readtable('Data_global_landslide.csv');
count = 0;




%% ____________________
%% CALCULATIONS

mudslide = Data.landslideCategory == 2 & Data.landslideTrigger ~= 30;
mcount = sum(mudslide, "all");

avalanche = Data(Data.landslideCategory == 3,:);
%%%lat= avalanche(:, end)
%%%lat_avg = mean(lat, 'all')

deathcount = Data.fatality_count > 0 & Data.latitude_decimalDegrees_ > 0 ...
& Data.longitude_decimalDegrees_ < 0;
dcount = sum(mudslide, "all");

y= Data.landslideCategory ;

%%I RAN OUT OF TIME AND SUBMITTED WHAT I HAD 


%% ____________________
%% FORMATTED TEXT DISPLAYS

fprintf("The number of mudslides not caused by downpour: %d", mcount)
%%fprintf("The average latitude of avalanches is: %f", lat_avg)
fprintf("Number of Deaths: %d", dcount)


%% ____________________
%% RESULTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.