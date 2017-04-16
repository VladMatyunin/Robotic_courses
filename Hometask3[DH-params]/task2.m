l2(1) = Link([0, 0, 0, -pi/2, 1]);
l2(1).qlim = [0 2];
l2(2) = Link([0, 1, 0, pi/2, 1]);
l2(2).qlim = [0 2];
l2(3) = Link([0, 0, 0, 0, 0]);
r = SerialLink(l2, 'name', 'Figure1');
r.plot([0,1,2],'workspace', [-0.5 1.5 -2 3 -1 5]);
r.teach()