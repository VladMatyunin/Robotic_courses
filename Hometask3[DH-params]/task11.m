% create Links of 6R robot
l(1) = Link([0, 0, 0, 0, 0]);
l(2) = Link([0, 0, 0.5, pi/2, 0]);
l(3) = Link([0, 0, 1, 0, 0]);
l(4) = Link([0, 0.5, 0, -pi/2, 0]);
l(5) = Link([0, 0, 1.5, 0, 0]);
l(6) = Link([0, 0, 0, pi/2, 0]);
%end effector
l(7) = Link([0, 0, 0, 0, 0]);
%full robot
R = SerialLink(l, 'name', 'Figure1');
R.plot(0:6,'workspace', [-1.5 1 -2 2 -0.2 3]);
%use teach to rotate robot with starting parameters
R.teach('approach',[pi/2,pi/4,pi/6,pi/2,pi/9,pi/9,0])
%find HM matrix for rotating
R.fkine([0;0;0;0;0;0;0])