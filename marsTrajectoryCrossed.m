function [val, term, dir] = marsTrajectoryCrossed(~, u)
     constants;
     alpha = atan(u(2)/u(1));
     
     val 
     
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