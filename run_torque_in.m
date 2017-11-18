clear all


sim('torque_in')

O2 = [];
O1 = [];
for i = 1:length(angles)
    O1(i,:) = getO1(angles(i,:));
    O2(i,:) = getO2(angles(i,:));

end
length(O1)

figure 
h = plot([0 O1(1,1) O2(1,1)],[ 0 O1(1,2) O2(1,2)])
axis([-2 2 -2 2]);
hold on
for i = 2:length(O1)
    
    x =[0 O1(i,1) O2(i,1)]
    y =[ 0 O1(i,2) O2(i,2)] 
    %plot([ 0 O1(i,1) O2(i,1)],[ 0 O1(i,2) O2(i,2)] )
    set(h,'XData',x, 'YData',y)
    refreshdata(h)
    pause(.1)
end

% plot([0 O1(1,1) O2(1,1)],[ 0 O1(1,2) O2(1,2)] )
% plot([0 O1(end,1) O2(end,1)],[0 O1(end,2) O2(end,2)] )