%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Your company uses cylindrical tanks with spherical end caps. You are 
%working on a design for a tank fill measurement system that can be used 
%in tanks that are installed horizontally. A probe will measure the height
%of the fluid in the tank, and that fluid height will be used to determine 
%the volume of the liquid in the tank.
%
% Assignment Information
%   Assignment:     A08, Problem 3
%   Author:         Conor McCarthy, mccar122@purdue.edu
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

D= 4.1;
%%%Tank Diameter
L= 20.5;
%%% Tank Length
H= 0.25;
%%%Tank height incrament
S= 0.8;
%%%safety coefficient 
count = 0;
index = 1;
S_T= 0.8;
Hi=0;

%% ____________________
%% CALCULATIONS
R = D/2;
f_h= 0:.2:R;
Lc= L+2*R;
Vf= Lc*(R^2*acos((R-H)/R)-(R-H)*sqrt(2*R*H-H^2));
Vta= (pi*H^2*(R-H))/2;
max_v= Vf + Vta;
max_t = max_v*(R+0.5*dirac(H))+max_v*(R-0.5*dirac(H));
cfh= max_t + f_h;
Vi = (pi*Hi^2*(3*R-Hi)/2) + (Lc*(R^2*acos((R-Hi)/R)-(R-Hi)*sqrt(2*R*Hi-Hi^2)));
while max_v < (S_T - max_t)
    index = index + 1;
    f_h = f_h + + H;
    F_V= (pi*f_h^2*(3*R-f_h)/2)+ Lc*(R^2 * acos((R - f_h)/R) - (R-f_h)*sqrt(2*R*f_h-f_h.^2));
end
Y = ((R^2.*acos((R-f_h)./R)-(R-f_h).*sqrt(2.*R.*f_h-f_h.^2)).*5);
count = index;
final_volume = f_h - Vi;






%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAY

plot(f_h, Y)
title('Cylinder Liquid')
ylabel('Liquid Volume')
xlabel('Liquid Depth')

%% ____________________
%% RESULTS

display(count)
display(final_volume)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







