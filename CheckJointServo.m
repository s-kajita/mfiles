% CheckJointServo.m

figure;
subplot(311)
h = plot(time,angle_sens(:,JointID)*ToDeg,time,angle_out(:,JointID)*ToDeg);
set(h(1),'LineWidth',1.5);
if(exist('EndTime'))
  xlim([time(1) EndTime])
end
legend(JointName,[JointName,' ref'])
ylabel('[deg]')
title(['DIR:',pwd,'  SCRIPT:',GetScriptName()])

subplot(312)
plot(time,jointTorque(:,JointID))
if(exist('EndTime'))
  xlim([time(1) EndTime])
end
legend(JointName)
ylabel('[Nm]')

subplot(313)
plot(time,accel_sens/G)
if(exist('EndTime'))
  xlim([time(1) EndTime])
end
legend('Ax','Ay','Az')
ylabel(' [G]')
xlabel(' time [s]')