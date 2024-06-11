function [stability, routhArray] = routh_hurwitz(coeffs)
    # Routh-Hurwitz criterion implementation
    # Inputs:
    #   coeffs - vector of coefficients of the characteristic polynomial
    # Outputs:
    #   stability - boolean indicating stability (true if stable, false otherwise)
    #   routhArray - the Routh array

    # Length of the characteristic polynomial
    n = length(coeffs);

    # Initialize the Routh array with zeros
    routhArray = zeros(n, ceil(n/2));

    # Fill the first row of the Routh array with the coefficients of the polynomial
    routhArray(1, :) = coeffs(1:2:end);

    # Fill the second row with the remaining coefficients
    if length(coeffs) > 1
        routhArray(2, 1:length(coeffs(2:2:end))) = coeffs(2:2:end);
    end

    # Compute the rest of the Routh array
    for i = 3:n
        for j = 1:size(routhArray, 2) - 1
            if routhArray(i-1, 1) == 0
                routhArray(i-1, 1) = 1e-4;  % Avoid division by zero
            end
            routhArray(i, j) = (routhArray(i-1, 1) * routhArray(i-2, j+1) - routhArray(i-2, 1) * routhArray(i-1, j+1)) / routhArray(i-1, 1);
        end
    end

    # Check for stability
    # The system is stable if all elements in the first column of the Routh array are positive
    stability = all(routhArray(:, 1) > 0);

    # Display the Routh array
    disp('Routh array:')
    disp(routhArray)

    # Display the stability result
    if stability
        disp('The system is stable.')
    else
        disp('The system is unstable.')
    end
end
