%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%
% Assignment Information
%   Assignment:     A05, Problem 1
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Matrix Manipulation
% Write one command to create the matrix below.
mat_Q1 = 9* ones(7);
%   Using array indexing,
% a) Replace the inner 5x5 matrix with 3s with one command.
% b) Replace the inner 3x3 matrix with 5s with one command.
% c) Replace the innermost value with 2 with one command.
mat_Q1(2:6,2:6) = 3;
mat_Q1(3:5,3:5) = 5;
mat_Q1(25) = 2;
% Using array indexing,
% a) Copy a row vector from mat_Q1 that contains these values in this order
%    using one command: A =   2  5  3  9
% b) Copy a row vector from mat_Q1 that contains these values in this order
%    using one command: B =   3  5  2
% c) Copy a column vector from mat_Q1 that contains these values in this order
%    using one command:C = 2 5 3 9
% d) Copy a column vector from mat_Q1 that contains these values in this order
%    using one command: D = 3 5 2
% Do not hardcode any values from mat_Q1; assign the new vectors to the variables given.
A = mat_Q1(4,4:7);
B= mat_Q1(4,2:4);
C= mat_Q1(4:7,4);
D= mat_Q1(2:4,4);
%Using only the vectors A, B, C, and/or D and array indexing, write a set 
% of commands to replace the exterior rows and columns
mat_Q1(1,1:4) = A;
mat_Q1(7,1:4) = A;
mat_Q1(1,5:7) = B;
mat_Q1(7,5:7) = B;
mat_Q1(1:4,1)=C;
mat_Q1(1:4,7)=C;
mat_Q1(5:7,1)= D;
mat_Q1(5:7,7)= D;
%  a) Write one command that sums each column in mat_Q1. Assign the sums
%    to a variable named W.
% b) Write one command that sums each row in mat_Q1. Assign the sums
%    to a variable named X.
% c) Write one command that sums all elements in mat_Q1. Assign the sum
%    to a variable named Y.
% d) Write one command to concatenate Y to the bottom of X. Assign 
%    the result to a variable named Z.
W = sum(mat_Q1);
X =sum(mat_Q1,2);
Y = sum(mat_Q1, 'all');
Z = cat(1,X,Y);
%Expand the size of mat_Q1 by concatenating it with the sum vectors X and Y.
%Concatenate W to the BOTTOM of mat_Q1
%Concatenate Z to the RIGHT of mat_Q1
mat_Q1 = cat(1,mat_Q1,W);
mat_Q1 = cat(2,mat_Q1,Z);