function [ G ] = gravity(q)
%GRAVITY Summary of this function goes here
%   Detailed explanation goes here

l1 = 1;
l2 = 1;
m1 = 1;
m2 = 1;
G = [ 9.81*( 0.5*l1*cos(q(1))*m1 +(l1*cos(q(1))+0.5*cos(q(1)+q(2)))*m2);...
       0.5*9.81*m2*l2*cos(q(1) + q(2))];

end

