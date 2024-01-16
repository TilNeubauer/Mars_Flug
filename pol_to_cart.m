% pol_to_cart.m
function [x, y] = pol_to_cart(r, theta)
    % Umrechnung von Grad in Bogenmaß
    % theta_rad = deg2rad(theta_deg);
    
    % Berechnung der kartesischen Koordinaten
    x = r * cos(theta);
    y = r * sin(theta);
    
    % Anzeige der Ergebnisse
    %disp(['Kartesische Koordinaten: (' num2str(x) ', ' num2str(y) ')']);
end
