function [ qdd ] = dynamics( u, q,qd )
%DYNAMICS Summary of this function goes here
%   Detailed explanation goes here
l1 = 1;
l2 = 1;
m1 = 1;
m2 = 1;
M = [(l1^2 + l2^2)/3 + l1^2*m2 + l1*l2*m2*cos(q(2)), (l2^2 * m2)/3 + 0.5*l1*l2*m2*cos(q(2));...
     l2*m2*(l2/3 + 0.5*(l1*cos(q(2)))), (m2*l2^2)/3];

V = [ -l1*l2*m2*sin(q(2))*qd(1)*qd(2) - 0.5*l1*l2*m2*sin(q(2))*qd(2)^2;...
    0.5*m2*l1*sin(q(2))*qd(1)^2];

G = [ 9.81*( 0.5*l1*cos(q(1))*m1 +(l1*cos(q(1))+0.5*l2*cos(sum(q)))*m2);...
       0.5*9.81*m2*l2*cos(sum(q))];

qdd =  inv(M)*(u - V - G);
end

