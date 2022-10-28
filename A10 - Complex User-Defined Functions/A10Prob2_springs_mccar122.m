function [k, k1, k2, k3] = A10Prob2_springs_mccar122(m, d_s, d_t,d)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This is the sub fucntion to calculate spring stiffness
%
% Function Call
%IDK Yet
%
% Input Arguments
%For A10Prob2_springs_mccar122 : total mass of the body (scalar), 
%                                length of body sections (vector), 
%                                the scaled lengths (vector)
%
% Output Arguments
%For A10Prob2_springs_mccar122 : The Spring stiffness
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k = ((m * g)/d);
k1 = (k * d_s) / (l_s - d_s);
k2 = k1;
k3 = (k * d_t) / (l_t - d_t);
end

