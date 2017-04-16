l(1) = Link([-pi/2, 0,  0, pi/2, 0]);
l(2) = Link([0,     0, 1,   0,  0]);
l(3) = Link([pi/2,  0, 0,  pi/2, 0]);
l(4) = Link([0,     1, 0, -pi/2, 0]);
l(5) = Link([-pi/2, 0, 0, pi/2, 0]);
l(6) = Link([pi/2,  0, 0, pi/2, 0]);
l(7) = Link([0,     0, 0,   0,  0]);
R = SerialLink(l, 'name', 'Figure1');
R.plot([1,2,3,4,5,6,7],'workspace', [-1.5 1 -2 2 -0.2 3]);
R.teach('approach',[0,0,0,0,0,0,0])
R.fkine([0;0;0;0;0;0;0])