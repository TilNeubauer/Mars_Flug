function [val, term, dir] = marsTrajectoryCrossed(~, u)
     constants;

     phi = atan2(u(2), u(1));
     [x_m, y_m] = pol_to_cart(2.454354124119251e+11, phi); % gibt die x-y-koordinaten vom Mars zurück bei einem Drehwinkel um phi

     val = hypot((u(1) - x_m), (u(2) - y_m));
     
%      sun_vector = [a_mars*e_mars
%                    0];
%      rocket_vector = [u(1) + a_mars * e_mars
%                       u(2)];
%      alpha = acos(dot(sun_vector, rocket_vector) / (norm(sun_vector) * norm(rocket_vector)));
%      [~, ~, x_m, y_m, ~, ~] = calculatePlanetPositions(alpha);
%      val = hypot(u(1) - x_m, u(2) - y_m);


%    val = a_mars - hypot(u(1), u(2));
    dir = -1;
    term = 1;
end