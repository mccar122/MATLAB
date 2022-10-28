function Quiz2_Prob7_mccar122
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%identify a list of possible microchips from a catalog selection based on 
%two mission criteria: TID threshold and LET threshold under which there 
%are no single event latch ups at 125 degrees Celsius.
%
% Function Call
%Quiz2_Prob7_mccar122(min_LET, min_TID, catalog_chipname, chip_LET, chip_TID)
%
% Input Arguments
%min_LET, min_TID, catalog_chipname, chip_LET, chip_TID
%
% Output Arguments
%No Output Arguements
%
% Assignment Information
%   Assignment:     Quiz 2, Problem 7
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

min_LET = input("What is minimum LET threshold the microchip must survive: ");
min_TID = input("What is minimum TID the microchip must survive: ");
catalog_chipname = ["AT17LV010-10DP";"AT28C010-12DK";"AT65609EHV";"AT69170F";"AT68166H";"AT60142H"];
chip_LET =[100;120;50;70;180;170];
chip_TID =[60;30;300;60;200;300];
%% ____________________
%% CALCULATIONS

for i = 1:6
    if min_LET <0 || min_TID <0
        fprintf("Invalid Minimum values please enter valid minimum values \n")
    elseif chip_LET(i) < min_LET || chip_TID < min_TID
        fprintf("Chip %s fails minimum test \n", catalog_chipname(i))
    else
        fprintf("Chip %s passes minimum tests \n", catalog_chipname(i))
    end
end

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS






%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



