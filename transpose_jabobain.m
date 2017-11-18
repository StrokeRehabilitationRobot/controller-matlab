function [tau] = transpose_jabobain(F,q)
%GETTORUE Summary of this function goes here
%   Detailed explanation goes here
l1 = 1;
l2 = 1;
J = [ -l1*sin(q(1)) - l2*sin(sum(q)), l1*cos(q(1)) + l2*cos(sum(q));
      -l2*sin(sum(q)), l2*cos(sum(q))];
 
tau = J;



end

