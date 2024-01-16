function simulatePlanetsMovement()

    constants; 
    fitfun_e = calculatefittedfunction(e_earth, a_earth);
    fitfun_m = calculatefittedfunction(e_mars, a_mars);
       
    t = 0;
    sim_end = 365;
    vec_x_e = [];
    vec_y_e = [];
    vec_x_m = [];
    vec_y_m = [];
    while t < sim_end
        [theta_e, theta_m, r_e, r_m] = calculatePlanetPositions(t, fitfun_e, fitfun_m);
        index = t + 1;
        [vec_x_e(index), vec_y_e(index)] = pol_to_cart(r_e, theta_e);
        [vec_x_m(index), vec_y_m(index)] = pol_to_cart(r_m, theta_m);
        t = t + 1;

    end

    figure;
    hold on;
    plot(vec_x_e, vec_y_e, 'b', 'LineWidth', 1.5);
    plot(vec_x_m, vec_y_m, 'r', 'LineWidth', 1.5);
    plot(0, 0, 'y*', 'MarkerSize', 30);

    %theta = linspace(0, 2*pi, 1000);
    %v_e = v_e0 * sqrt(x_e(1)^2 + y_e(1)^2) ./ sqrt(x_e.^2 + y_e.^2);
    %v_m = v_m0 * sqrt(x_m(1)^2 + y_m(1)^2) ./ sqrt(x_m.^2 + y_m.^2);
    
    %t_e = sqrt(diff(x_e).^2 + diff(y_e).^2)./v_e(1:end-1);
    %t_e(end+1) = t_e(end);
    %t_m = sqrt(diff(x_m).^2 + diff(y_m).^2)./v_m(1:end-1);
    %t_m(end+1) = t_m(end);
    %t_sum_e = cumsum(t_e);
    %t_sum_m = cumsum(t_m);

    %figure;    
    % plot(x_e, y_e, 'b', 'LineWidth', 1.5);
    % hold on;
    % plot(x_m, y_m, 'r', 'LineWidth', 1.5);
    % plot(x_s, y_s, 'y*', 'MarkerSize', 30); % Sonne als gelber Stern markieren
    % axis equal;
    % title('Elliptische Bahnen von Erde und Mars relativ zur Sonne');
    % xlabel('X-Position (km)');
    % ylabel('Y-Position (km)');
    % legend('Erde', 'Mars', 'Sonne');
    
    % last_pos_e = plot(x_e(1), y_e(1), 'o', 'MarkerSize', 20, 'MarkerFaceColor', 'g');
    % last_pos_m = plot(x_m(1), y_m(1), 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

    % x_e_equation = polyfit(t_sum_e, x_e, 6);
    % y_e_equation = polyfit(t_sum_e, y_e, 6);

    % x_m_equation = polyfit(t_sum_m, x_m, 6);
    % y_m_equation = polyfit(t_sum_m, y_m, 6);
    % t = linspace(0, 10*t_sum_e(end), 1000);

%     for i = t
%         plot(polyval(x_e_equation, i), polyval(y_e_equation, i), 'o', 'MarkerSize', 1, 'MarkerFaceColor', 'g');
%         plot(polyval(x_m_equation, i), polyval(y_m_equation, i), 'o', 'MarkerSize', 1, 'MarkerFaceColor', 'b');
%     end
     % for i = t 
     %    delete(last_pos_e);
     %    delete(last_pos_m);
     %    i_e = rem(i, t_sum_e(end));
     %    i_m = rem(i, t_sum_m(end));
     %    last_pos_e = plot(polyval(x_e_equation, i_e), polyval(y_e_equation, i_e), 'o', 'MarkerSize', 20, 'MarkerFaceColor', 'g');
     %    last_pos_m = plot(polyval(x_m_equation, i_m), polyval(y_m_equation, i_m), 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
     %    pause(t(2)/speed_multipier)
     %end

end