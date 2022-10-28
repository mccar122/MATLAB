%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%replace this text with your program decription as a comment
%
% Assignment Information
%   Assignment:     A06, Problem 4
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%did you complete the assignment information? delete this line if yes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

Booking = importdata('Data_booking_numbers.txt');
%%Imports airlines data
x= input("Please Enter Your Booking Number: ");
y= input("Input 1 for premium or 2 for basic: ");
a=sum(Booking(:,:)==x);
%%this calculates how many pasengers are booked together



%% ____________________
%% CALCULATIONS & DISPLAYS

if y == 1 && a == 1
fprintf("%d, Window", x)
elseif y ==2 && a == 1
fprintf("%d, Aisle", x)
elseif a == 2 || a ==3
fprintf("%d, One Side Row", x)
elseif y == 1 && a == 4
fprintf("%d, One side row plus aisle seat on opposite side", x)
elseif y == 2 && a == 4
fprintf("%d, One side row plus aisle seat on full side", x)
elseif a == 6 || a == 5
fprintf("%d, One full Row", x)
elseif y ~= 1 && y ~= 2
fprintf("Invalid Economy Class")
else
fprintf("Invalid Booking Number")
end

%%This runs the inputted data through a series of logical tests to
%%determine where the passengers are going to sit via airline policy

%% ____________________
%% RESULTS

% Test Case 1
% 13845360, Aisle

% Test Case 2
% 17248113, One full Row

% Test Case 3
% 17657472, One Side Row

% Test Case 4
% 18276759, Aisle

% Test Case 5
% 12774978, One side row plus aisle seat on opposite side

% Test Case 6
% Invalid Booking Number

% Test Case 7
% 11174805, One Side Row

% Test Case 8
% 13925866, Window


%% ____________________
%% ANALYSIS

% -- Q1
%The only case not tested was a case in which the booking was for 4 and
%they were in basic economy. Everything else was tested


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.