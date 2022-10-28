function [volume_ramp] = A10_poolRamp_mccar122(Sur_L, Sur_W, D_Shal, D_Deep)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function will determine the volume of a ramp style pool based on
% user inputs. 
%
% Function Call
% volume_ramp = A10_poolRamp_hill381(Sur_L, Sur_W, D_Shal, D_Deep)
%
% Input Arguments
% Sur_L = Surface length,
% Sur_W = Surface width
% D_Shal = Shallow depth 
% D_Deep = Deep depth 
%
% Output Arguments
% volume_ramp = ramp pool volume
%
% Assignment Information
%   Assignment:     A10, Problem "Pool Ramp"
%   Author:         Conor McCarthy, mccar122@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% Value to convert cubic meters to gallons for volume
CubicFt_Gal = 7.48052; %number of gallons per cubic foot

%% ____________________
%% CALCULATIONS

% Validate if input values are positive
if D_Shal < 0 | D_Deep < 0 | Sur_L < 0 | Sur_W < 0
    fprintf(2,'Error. Please only input positive numbers. \n')
else
    
% Calculates ramp pool volume in cubic feet
Vol_1 = 0.5 * D_Shal * (Sur_L / 3) * Sur_W;
Vol_2 = D_Shal * Sur_W * (Sur_L / 3);
Vol_3 = Vol_2 + (0.5 * Sur_W *  (D_Deep - D_Shal) * (Sur_L / 3));
Vol_Tot = Vol_1 + Vol_2 + Vol_3;

% Converts pool volume to gallons
volume_ramp = Vol_Tot * CubicFt_Gal;


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% Displays results of the volume for ramp pool
fprintf('The volume of the ramp pool is: %.2f gallons. \n', volume_ramp)
end

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.