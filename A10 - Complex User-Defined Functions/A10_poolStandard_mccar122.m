function [standard_pool_vol] = A10_poolStandard_mccar122(surface_length, surface_width, shallow_end_depth, deep_end_depth)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculates the standard pool volume.
%
% Function Call
% [standard_pool_vol] = A10_poolStandard_jchangkl(surface_length, surface_width, shallow_end_depth, deep_end_depth)
%
% Input Arguments
% surface_length - surface length of the pool in feet
% surface_width - surface width of the pool in feet
% shallow_end_depth - shallow end depth of pool in feet
% deep_end_depth - deep end depth of pool in feet
%
% Output Arguments
% standard_pool_vol - volume in gallons of standard pool
%
% Assignment Information
%   Assignment:     A10 team, Problem "Pool Standard"
%   Author:         Conor McCarthy, mccar122@purdue.edu

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% Value to convert cubic meters to gallons for volume
convert_gallons = 7.48052; %number of gallons per cubic foot


%% ____________________
%% CALCULATIONS

% Validate if input values are positive
if any([surface_length surface_width shallow_end_depth deep_end_depth]) <= 0
    fprintf(2,'Dimensions CANNOT have a negative value')
else

% Calculates standard pool volume in cubic feet
standard_poolvol_cubicm = ((surface_length / 3) * (surface_width) * shallow_end_depth) + ...
    (((surface_length / 3) * (surface_width) * shallow_end_depth) + (((surface_length / 3) * (surface_width) * (deep_end_depth - shallow_end_depth)) / 2)) + ...
    (((surface_length / 3) * (surface_width) * shallow_end_depth) + (((surface_length / 3) * (surface_width) * (deep_end_depth - shallow_end_depth)) / 2));

% Converts pool volume to gallons
standard_pool_vol = standard_poolvol_cubicm * convert_gallons;

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% Displays results of the volume for standard pool
fprintf('The volume of the standard pool is: %.2f gallons. \n', standard_pool_vol)
end

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.
