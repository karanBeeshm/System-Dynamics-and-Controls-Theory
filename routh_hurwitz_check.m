% Define the coefficients of the characteristic polynomial
coeffs = [1, 0.2251, 0.01688, 0.000354, 3.057e-6, 1.632e-9];

% Call the Routh-Hurwitz function
[stability, routhArray] = routh_hurwitz(coeffs);

% Output the stability and Routh array
stability
routhArray

