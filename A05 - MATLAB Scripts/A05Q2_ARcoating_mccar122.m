%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%
% Assignment Information
%   Assignment:     A05, Problem 2
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% ____________________
%% INITIALIZATION
t1 = deg2rad(45);
%%Angle of Incidence%%
t2 = deg2rad(33);
%%Angle of Transmission%%
n1 = 1.3;
%%The refractive index of the coating%%
n2 = 1.8;
%%The refractive index of glass%%
n3 = 1;
%%The refractive index of air%%


%% ____________________
%% CALCULATIONS
r_coating = ((n1*cos(t1)-n3*cos(t2))/(n1*cos(t1)+n3*cos(t2)) - ...
    (n2*cos(t1)-n1*cos(t2))/(n2*cos(t1)+n1*cos(t2)))^2;
T_coat = 1-r_coating ;
r_nocoating = ((n2*cos(t1)-n3*cos(t2))/(n2*cos(t1)+n3*cos(t2)))^2;
T_noCoat = 1-r_nocoating;

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('The transmitted intensity\n')
fprintf('With the coating is: %.3f\n', T_coat)
fprintf('Without the coating is: %.3f\n', T_noCoat)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





