%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for A11 Problem 2: MATLAB Skills - Nested Loops
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION

a = 0;
b = 9;
count_outer = 0;
total_iterations = 0;
sum_ab = a + b;
while sum_ab < 1000
    count_outer = count_outer + 1;
    a = a + 1;
    c = 5;
    while c <= 18
        a = 2*a + c;
        b = 6*c;
        sum_ab = a + b;
        total_iterations = total_iterations + 1;
        c = c + 3;
    end
end
display(count_outer)
display(total_iterations)
display(sum_ab)
       

        
        



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.