%% Evaluates O2 for configuration q
function O2 = getO2(q)
a1 = 1;
a2 = 1;
theta1 = q(1);
theta2 = q(2);
O2 = [a1*cos(theta1)+a2*cos(theta1+theta2), a1*sin(theta1) + a2*sin(theta1+theta2)];
end