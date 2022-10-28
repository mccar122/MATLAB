%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%You are planning an exercise schedule with daily exercise minutes.
% Assignment Information
%   Assignment:     A08, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
days = input("How many days in the workout schedule: ");
%Creates Values to be used later
sports_day = input("What day are we playing sports? ");
%Creates Values to be used later
rest_day = input("What day are we chilling? ");
%Creates Values to be used later
weeks = days/7;
%Converts input into usable data
odd_day = 30;
%run time during the odd days in schedule
even_day = 45;
%run time during the even days in schedule
sports_time = 90;
%activity time during sports days

%% ____________________
%% CALCULATIONS
Schedule= zeros(weeks, 7);
%Creates a table to be used as template for schedule
for i = 1:weeks
    for day = 1:7
        if (mod(i,2)) ~= 0
            if (mod(i,day)) ~= 0
                Schedule(i,day) = odd_day;
            else
                Schedule(i, day) = even_day;
            end
        else 
            if (mod(i,2)) ~= 0
                Schedule(i, day) = even_day;
            else
                Schedule(i, day) = odd_day;
            end
        end
        if day == sports_day
            Schedule(i, day) = sports_time;
        end
        if day == rest_day
            Schedule(i, day) = 0;
        end
    end
end

row = 1;
Schedule(1:row-1,:) = Schedule(1:row-1,:);
tp = Schedule(row:end,:);
Schedule(row, : )=["Mondy", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
Schedule(row+1:end+1,:) = tp;

            
            


%% ____________________
%% FORMATTED TEXT DISPLAY

fprintf("Here is the workout schedule: ")

disp(Schedule)


%% ____________________
%% RESULTS

%For Test Case
%Schedule =
%
%   NaN   NaN   NaN   NaN   NaN   NaN   NaN
%    45    30    30    90     0    30    30
%    30    30    30    90     0    30    30
%    45    30    45    90     0    30    30
%    30    30    30    90     0    30    30
%    45    30    30    90     0    30    30

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







