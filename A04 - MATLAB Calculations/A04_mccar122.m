%%Matrix Creation:
mat_ones = ones([24,11]);
%%Sorting
vec3 = [1, 5, 6, 8, 6, 2, 5, 1, 1, 1, 5, 1];
vec3_sorted= sort(vec3, 'descend');
%%Rounding
vec4 = [-4.2, 0.91, 4.34, 3.66, 3.55, -6.11, 1.52, -6.54, -11.66, -4.3, 0.36, -4.01];
vec4_rounded= round(vec4);
%%Elements 
mat5 = [1, 2, 5, 2, 7; 5, 5, 1, 8, 3; 6, 1, 2, 5, 0; 8, 1, 9, 5, 3; 6, 1, 7, 4, 5];
% identify the dimensions
cols= size(mat5,2);
rows= size(mat5,1);
% number of elements
mat5_elems= numel(mat5);

%%Math Syntax - Q2 Image.fig has calculation to clone in MATLAB
a = 0.33;
b = 0.36;
c = 0.61;
s = (b+a)/(c^(2/3))+((c^2+a)/(1-c*sin(pi/5)))^2;
x = [0.53, 0.63, 0.3];
y = [0.61, 0.42, 0.45];
z = [0.32, 0.65, 0.56];
v= (4*x.^(4)+1)*((y/(z.*sin(pi/6)))+(z+1)/y.^(1/4))^3;


