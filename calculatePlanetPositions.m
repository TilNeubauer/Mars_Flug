% calculatePlanetPositions.m
function [theta_e, theta_m, r_e, r_m] = calculatePlanetPositions(t, fitfun_e, fitfun_m)
    % Funktion zur Berechnung der Positionen von Erde und Mars entlang ihrer elliptischen Bahnen

    % Lade Konstanten
    constants;

    % Berechnung der Drehimpulse (berechnung im Perihel, L = konst)
    L_e = m_erde * r_perihel_e * v_e0;
    L_m = m_mars * r_perihel_m * v_m0;

    % Berechnung der Änderung der Fläche pro Zeiteinheit
    semiminor_axis_e = a_earth*sqrt(1-(e_earth*e_earth));
    area_earth = pi * a_earth * semiminor_axis_e;
    change_in_area_per_day_e = area_earth / orbit_e_d;
    change_in_area_per_s_e = area_earth / orbit_e;

    semiminor_axis_m = a_mars * sqrt(1-(e_mars*e_mars));
    area_mars = pi * a_mars * semiminor_axis_m;
    change_in_area_per_day_m = area_mars / orbit_m_d;
    change_in_area_per_s_m = area_mars / orbit_m;

    % berechnung des winkels aufgrung von t
    t_e = mod(t, orbit_e_d);
    slice_e = area_earth - t_e*change_in_area_per_day_e;
    theta_e = polyval(fitfun_e, slice_e);
    %theta_e = calculate_angle_function(slice_e, e_earth, a_earth, fitfun);

    t_m = mod(t, orbit_m_d);
    slice_m = area_mars - t_m*change_in_area_per_day_m;
    theta_m = polyval(fitfun_m, slice_m);
    %theta_m = calculate_angle_function(slice_m, e_mars, a_mars, fitfun);
    
    % berechnung coordinaten in polarform
    % disp(size(e_earth));
    %disp(size(theta_e));
    %disp(size(cos(theta_e)));
    %disp(size(e_earth));



    r_e = (a_earth*(1-(e_earth)^2))/(1+e_earth * cos(theta_e));
    r_m = (a_mars*(1-(e_mars)^2))/(1+e_mars * cos(theta_m));

end

