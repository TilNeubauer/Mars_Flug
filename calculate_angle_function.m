% calculate_angle_function.m
function result = calculate_angle_function(target_area, fitfun)

    
    resulting_angle = polyval(fitfun, target_area);

    % Evaluate the polynomial for the fitted angle values
    %fitted_phi_values = polyval(fitfun, area);

    %Plot the fitted function
    %hold on;
    %plot(area, fitted_phi_values, 'g', 'LineWidth', 2, 'DisplayName', 'Fitted Polynomial');

    %legend('show');

    result = resulting_angle;
end
