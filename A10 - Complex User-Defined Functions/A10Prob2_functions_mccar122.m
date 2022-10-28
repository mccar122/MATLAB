function A10Prob2_functions_mccar122
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This is the main overall function that calls the 2 sub functions into
%order to determine the centre of mass of a contraption
%
% Function Call
%IDK Yet
%
% Input Arguments
%For A10Prob2_main_mccar122 : A10Prob2_springs_mccar122 and A10Prob2_lengths_mccar122
%For A10Prob2_springs_mccar122 : total mass of the body (scalar), 
%                                length of body sections (vector), 
%                                the scaled lengths (vector)
%For A10Prob2_lengths_mccar122 : mass of body sections (vector), 
%                                length of body sections (vector),
%                                center-of-mass locations of body sections (vector)
%
% Output Arguments
%For A10Prob2_main_mccar122 : Location of Centre Mass
%For A10Prob2_springs_mccar122 : The Spring stiffness
%For A10Prob2_lengths_mccar122 : scaled lengths and total mass of the body 
%
% Assignment Information
%   Assignment:     A10, Problem 02
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Team ID:        002-06
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

l_s = 0.421;
l_t = 0.432;
m_s = 3.1;
m_t = 7.39;
m_h = 24.13;
l_h = 0.8;
d = 0.75;
g=9.8;
l_cs = 0.55 * l_s;
l_ct = 0.59 * l_t;
l_ch = 0.41 * l_h;

%% ____________________
%% CALCULATIONS

[m, d_s, d_t, d_h] = A10Prob2_lengths_mccar122(l_s, l_t, m_s, m_t, m_h, l_cs, l_ct, l_ch);
[k, k1, k2, k3] = A10Prob2_springs_mccar122(m, d_s, d_t,d);
roc = d_s + d_t + d_h ;

%% ____________________
%% TEXT DISPLAYS
fprintf("The spring constants are: k= %2.f k1= %2.f k2= %2.f k3= %2.f \n", k, k1, k2, k3)
fprintf("The location of the centre of mass is %2.f metres off the ground. \n", roc)
end
%% ____________________
%% RESULTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



