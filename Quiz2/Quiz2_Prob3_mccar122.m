function Quiz2_Prob3_mccar122
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Function for Quiz 2 - Problem 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION

x = input("What is the value of x: ");
A= 3;
B= 13;
C= 21;
D= 18;
if x > A && x < B
    y = x + 5;
elseif x > B && x < D
    x = x^2;
elseif x < C
    y = x + 5;
    x = x^(2);
elseif x == C
    y = x^2 + 5;
else
    disp("X is out of bounds and must be less than C")
end
end
    
    



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The function I am 
% submitting is my own original work.