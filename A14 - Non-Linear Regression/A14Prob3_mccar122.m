m1 = 0.0022;
b1 = 0.71;
m1_model = m1;
b1_model = 10^(b1);

m2 = 1.73;
b2 = -1.38;
m2_model = m2;
b2_model = 10^(b2);


fprintf("Data set 1 is an Exponetial Function represented by the Linearized Equation: \n y = %.2f * 10^(x * %.2f) \n", b1_model, m1_model)
fprintf("Data set 2 is a Power Function represented by the Linearized Equation: \n y = %.2f * x^(%.2f) \n", b2_model, m2_model)
