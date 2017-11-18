%% Evaluates O1 for configuration q
function O1 = getO1(q)

theta1 = q(1);
theta2 = q(2);
a1 =1;
a2 =1;
O1 = [a1*cos(theta1), a1*sin(theta1)];
end