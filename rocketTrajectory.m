function uPunkt = rocketTrajectory(t, u) 

    constants;

    uPunkt = [u(3)
        u(4)
        -G * m_sonne * u(1) ./ (norm([u(1) u(2)])^3)
        -G * m_sonne * u(2) ./ (norm([u(1) u(2)])^3)];
end