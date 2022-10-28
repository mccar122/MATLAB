%This Sub-Function calculates the volume of an oval tank
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%
% Function Call
%function[Tank_Volume] = Oval_Tank(L1, L2, Ds, Dd)
%Tank_Volume_CF = L1*L2*pi*Ds + ((1/3)*pi*L1*L2*(Dd-Ds));
%Tank_Volume = Tank_Volume_CF * 7.48;
%disp("Volume in Gallons is: ")
%disp(Tank_Volume)
%end
%
% Input Arguments
%L1 is semi-major axis of the surface ellipse
%L2 is semi-minor axis of the surface ellipse
%Ds is the shallow end depth
%Dd is the deep end depth
%
% Output Arguments
% Tank_Volume is the volume of tank in gallons
%
% Assignment Information
%   Assignment:     A10, Problem Team
%   Author:         Conor, mccar122@purdue.edu
%   Team ID:        002-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Jake Hill, hill381@purdue [repeat for each]
%                          Joris Schuller jschull@purdue
%                          JP Chang jchangkl@purdue


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

L1 = input("What is the semi major radius (in ft)? ");
L2 = input("What is the semi minor radius (in ft)? ");
Ds = input("What is the shallow end depth (in ft)? ");
Dd = input("What is the deep end depth (in ft)? ");

%% ____________________
%% CALCULATIONS

Tank_Volume = Oval_Tank(L1, L2, Ds, Dd);

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



