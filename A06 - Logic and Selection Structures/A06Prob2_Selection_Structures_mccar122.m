%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% We are sorting and understanding landslide data from around the world.
%
% Assignment Information
%   Assignment:     A06, Problem 2
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Selection Structures
%You must code a single selection structure that will perform 
% mathematical operations under certain conditions. Your selection 
% structure must follow the statements below and should work 
% for any integer, A.
%Conditions:
%If A is between 46 and 53, inclusive of 53, then reassign A to the value of A plus 106
%If A is less than -6 or greater than 338, then reassign A to the value of A raised to 2.25
%If A is greater than or equal to 278, then reassign A to the value of A times -2
%If A is between 82 and 102, inclusive of both values, then reassign A to the value of A minus 69

if A >46 && A <= 53
A = A+106;
elseif A < -6 || A > 338
A = A^(2.25);
elseif A >= 278 
A = A * (-2);
elseif A >= 82 && A <= 103
A= A - 69;
else
fprintf("A is invalid")
end