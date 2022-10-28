function A10_PoolVolume_main
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculates the volume of 4 different types of pool: the
% standard pool, oval pool, round pool or ramp pool, depending on the user
% input that serves as the condition to calculate the specific volume for
% the correct type of pool. The function serves as a main function that
% calls other subfunctions that calculate the volume for each type of pool
% and return the volume of the pool in gallons of the desired type of pool
% wanted by the user. 
%
% Function Call
% A10_PoolVolume_main
%
% Input Arguments
% N/A
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     A10, Problem #1 
%   Author:         Conor McCarthy, mccar122@purdue.edu

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% Import data from data manufacturer containing dimension of pools
pool_dimensions_data = readmatrix('Data_manufacturer_testDims.csv');

% User input of type of pool wanted to calculate volume
input_pool_type = input("Please input the type of pool inside quotation marks: ");

% type of pool data dimensions
standard_pool = pool_dimensions_data(1, 2:end);
ramp_pool = pool_dimensions_data(2, 2:end);
round_pool = pool_dimensions_data(3, 2:end);
oval_pool = pool_dimensions_data(4, 2:end);

%% ____________________
%% CALCULATIONS

% Calculates the volume of the desired pool in gallons based on the input of the user
% and calls each subfunction that calculates the volume for each type of
% pool depending on the user input.
if (input_pool_type == "Standard")
    volume = A10_poolStandard_mccar122(standard_pool(1), standard_pool(2), standard_pool(3), standard_pool(4));
elseif (input_pool_type == "Ramp")        
    volume = A10_poolRamp_mccar122(ramp_pool(1), ramp_pool(2), ramp_pool(3), ramp_pool(4));
elseif (input_pool_type == "Oval")
    volume = A10_poolOval_mccar122(oval_pool(1), oval_pool(2), oval_pool(3), oval_pool(4));
elseif (input_pool_type == "Round")
    volume = A10_poolRound_mccar122(round_pool(1), round_pool(2), round_pool(3), round_pool(4));
else
    fprintf(2, 'Invalid input\n')
end
        
        

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS

% -- Standard Pool
% The volume of the standard pool is: 254337.68 gallons. 

% -- Ramp Pool
% The volume of the ramp pool is: 235636.38 gallons. 

% -- Round Pool
% The volume of the round pool is: 293465.57 gallons. 

% -- Oval Pool (only used by teams with 4 members)
% The volume of the round pool is: 263208.36 gallons. 


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.

