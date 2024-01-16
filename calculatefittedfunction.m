% calculatefittedfunction.m
function [fitfun] = calculatefittedfunction(e, a)
    phi = linspace(0, 2*pi , 1000);
    % The Area function below is the result of the integral of the radius
    % function, as calculated by wolfram alpha
    area = (1/2) * ((e^2 - 1)^2) * (a^2) * ((e * sin(phi))/((e^2 - 1) * (e * cos(phi) + 1)) - (2 * atanh(((e - 1) * tan(phi/2))/sqrt(e^2 - 1)))/(e^2 - 1)^(3/2));
    
    fitfun = polyfit(area, phi, 3);
end