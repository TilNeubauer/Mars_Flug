function d = distanceToMars(v, planet_pos)
    constants;
    options = odeset('Events', @marsTrajectoryCrossed);
%     options2 = optimset('MaxFunEvals',2e9);
%     options = optimset(options1, options2);
%     coords = planetCoordinates(0*24*3600);

    [t, u] = ode45(@rocketTrajectory, [0 600], [planet_pos(1) planet_pos(2) v(1) v(2)], options);

    rockete = u(end, 1:2);
    %planet_pos = planetCoordinates(t(end));
    %fitfun_e = calculatefittedfunction(e_earth, a_earth);
    %fitfun_m = calculatefittedfunction(e_mars, a_mars);
    %[theta_e, theta_m, r_e, r_m] = calculatePlanetPositions(t(end), fitfun_e, fitfun_m);
    %[x_m, y_m] = pol_to_cart(r_m, theta_m);
    

    d = hypot(rockete(1)-planet_pos(1), rockete(2)-planet_pos(2));
end