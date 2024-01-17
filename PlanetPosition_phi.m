function fitfun_phi = PlanetPosition_phi(fitfun_m)
    %Gibt eine Funktion der Bahnkurve vom Mars zurück die Abhängig von der
    %Rotation phi ist 
    %Man enhält eine Funktion in die man den Winkel phi einen und bekommt die Kartesisches Koordinaten
    %zurück 

    t_vec = linspace(0, 687, 1000); % Mars umlaufdauer 687 Tage 
    y = fitfun_m(t_vec);
    fitfun_phi = polyfit(t_vec, y, 3);
end
