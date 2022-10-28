
function vol_gal = A10_poolRound_mccar122(L_1, L_2, D_s, D_d)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description
% This function calculates the pool volume for a round pool.
%
% Function Call
% vol_gal = pool_Round(D_s,D_d,L_1,L_2)
%
% Input Arguments
% 1. D_s = shallow end depth (ft)
% 2. D_d = deep end depth (ft)
% 3. L_1 = surface radius (ft)
% 4. L_2 = bottom radius (ft)
%
% Output Arguments
% 1. vol_gal = volume (gallons)
%
% Assignment Information
%   Assignment:     A10 team, Problem "Pool Round"
%   Author:         Conor McCarthy, mccar122@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% Value to convert cubic meters to gallons for volume
convert_gallons = 7.48052; %number of gallons per cubic foot

%% ____________________
%% CALCULATIONS

% Validate if input values are positive
if any([D_s D_d L_1 L_2]) <= 0
    fprintf(2,'Dimensions CANNOT have a negative value')
else
%   calculate volumes of pool sections in cubic feet
    cylinder = pi*L_1^2*D_s;
    frustrum = (pi*(D_d-D_s)/3)*(L_1^2+L_1*L_2+L_2^2);
    vol_ft3 = cylinder + frustrum;

% Converts pool volume to gallons
    vol_gal = vol_ft3 * convert_gallons;


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% Displays results of the volume for round pool
fprintf('The volume of the round pool is: %.2f gallons. \n', vol_gal)
end

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.