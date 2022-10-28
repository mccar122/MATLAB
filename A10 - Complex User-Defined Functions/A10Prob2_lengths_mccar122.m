function [m, d_s, d_t, d_h] = A10Prob2_lengths_mccar122(l_s, l_t, m_s, m_t, m_h, l_cs, l_ct, l_ch)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%This is the sub function to calculate mass and distance vectors
%
% Function Call
%IDK Yet
%
% Input Arguments
%For A10Prob2_lengths_mccar122 : mass of body sections (vector), 
%                                length of body sections (vector),
%                                center-of-mass locations of body sections (vector)
%
% Output Arguments
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

m = m_s + m_t + m_h;
d_s = (1/m) * (m_t * l_s + m_h * l_s + m_s * l_cs);
d_t = (1/m) * (m_h * l_t + m_t * l_ct);
d_h = (1/m) * (m_h * l_ch);
end
