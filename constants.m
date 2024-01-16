
% constants.m
% Dieses M-File enthält die deklarierten Konstanten

% Gravitationskonstante
G = 6.67430e-11; % m^3 kg^(-1) s^(-2)

% Massen der Himmelskörper
m_sonne = 1.989e30; % kg
m_erde = 5.972e24;  % kg
m_mars = 6.4171e23; % kg

% Große Halbachsen und Exzentrizitäten der Planetenbahnen
a_earth = 149598022960;  % [m] 
e_earth = 0.0167086;   % Exzentrizität der Erdbahn
semiminor_axis_e = a_earth*sqrt(1-(e_earth*e_earth));
a_mars = 227.9e9;   % in Kilometern 
e_mars = 0.0934;    % Exzentrizität der Marsbahn
speed_multipier = 10e6; % speed up for planet plot

orbit_e = 31557600; % [s]
orbit_e_d = 365.25; % [d]
orbit_m = 59356800; % [s]
orbit_m_d = 687;    % [d]

v_e0 = 30.29 * 1000; % [m/s] (speed of the Earth in perihelion)
v_m0 = 26.50 * 1000; % [m/s] (speed of the Mars in perihelion)
r_perihel_e = 147.1e6 * 1000; % radius sun-earth at perihelium [m]
r_perihel_m = 206.7e6 * 1000; % radius sun-mars at perihelium [m]

%Winkelgeschwindigkeiten Planeten (nicht konstant)
omega_mars= 1.058545155*10^(-7);
omega_erde= 1.992384991*10^(-6);
