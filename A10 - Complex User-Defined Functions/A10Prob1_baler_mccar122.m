function [v_position, h_position] = A10Prob1_Baer_mccar122(v_0, theta)
%%I am creating a user-defined function that uses the equations below to 
%%predict the maximum height the bale will travel (𝑦) when ejected and
%%the horizontal distance traveled when the maximum height is reached (𝑥).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%The point of this program is using a user defined function to calculate
%desired values
% Vertical Position and Horizontal Position
% Function Call
%[v_position, h_position] = A10Prob1_Baler_mccar122
%
% Input Arguments
%𝑣 = initial velocity of hay bale when it is ejected (m/s)
%𝜃 = launch angle that the hay bale leaves the ejector (deg)
%𝑡 = time since the hay bale was ejected (sec)
%𝑔 = gravitational constant, 9.8 m/s2
%
% Output Arguments
%𝑦 = vertical position of the hay bale (m)
%𝑥 = horizontal position of the hay bale (m)
%
% Assignment Information
%   Assignment:     A10, Problem 1
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        002-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

v_0 = input("What is the initial velocity of the hay bale? ");
%The code above and below is asking for the input arguements to be used
%later
theta = input("What was the launch angle? ");
g = 9.8;
%gravitational constant needed for calculations
%% ____________________
%% CALCULATIONS
%if and else if statement ensure that valid numbers are given and prompts
%for the user to correct and try again if not in acceptable range
if v_0 < 9.5 || v_0 > 13.25
    fprintf("Please enter a valid number between 9.5 and 13.25 m/s \n")
elseif theta < 30 || theta > 60
        fprintf("Please enter a valid launch angle between 30 and 60 degrees \n")
else
t = (1/g) * (v_0 * sind(theta));
h_position = 1.25 + (v_0 * sind(theta)) * t - 0.5 * g * t^2;
v_position = t * (v_0 * cosd(theta));
end
%calculations above give the vertical and horizontal position of the hay
%bail
%% ____________________
%% RESULTS

fprintf("The horizontal position of the hay bale is %2.f metres \n", v_position)
fprintf("The vertical position of the hay bale is %2.f metres \n", h_position)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



