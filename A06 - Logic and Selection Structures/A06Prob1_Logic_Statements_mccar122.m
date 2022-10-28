%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% We are sorting and understanding landslide data from around the world.
%
% Assignment Information
%   Assignment:     A06, Problem 1
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Logic Statements
mat1 = [177, 148, 181, 182, 181, 164, 190, 196;
  187, 150, 156, 158, 150, 175, 168, 192;
  175, 174, 190, 147, 183, 184, 196, 151;
  153, 152, 169, 160, 161, 169, 170, 153;
  173, 156, 169, 174, 186, 143, 177, 184;
  148, 192, 164, 173, 147, 177, 179, 188];
%Find the sum of all the elements in mat1.
S= sum(mat1, 'all');
%Create a vector that contains the indices of the elements in mat1 
% that are less than or equal to 168.
mat1 <= 168;
%Create a vector that contains the values of mat1 that are 
% less than or equal to 171.
mat1(mat1 <= 171);
%Calculate how many elements of mat1 are greater than or equal to 161
% and less than or equal to 175.
X = mat1 >= 161 & mat1 <= 175;
S= sum(X, 'all');
%Create a logical array where the only true elements correspond to 
% the locations in mat1 where one and only one of the following are true:
% mat1 is equal to 185
% mat1 minus 7 is greater than or equal to 168
X = mat1 == 185 | (mat1 -7) >= 168;

