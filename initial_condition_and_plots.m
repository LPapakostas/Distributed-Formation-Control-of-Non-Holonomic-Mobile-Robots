clc; clear all; close all;

K = 4 ; K_th = 3 ; Dmax = 3; 
Kij = 3 ; a = 1 ; b = 2 ; c = 4;
Vm = Kij*log(cosh(a-c)); xfinal = 60;
x1k = 0; y1k = -20; r1k = 3; %Obstacle 1
x2k = 15; y2k = -5; r2k = 4; %Obstacle 2
init1 = [ -29 -27 pi/6];
init2 = [ -27 -24 2*pi/3];
init3 = [ -25 -21 pi/12];
init4 = [ -23 -19 pi/2];
init5 = [ -21 -12 5*pi/4];
C = 2; L = 20;
yd = @(i) 4*i-20;
load_system('Project.slx');
sim('rfive');
disp('OK')
%%
plot(tout,xdesired(:,2),'--');
hold on;
plot(tout,x1(:,2));
hold on; 
plot(tout,x2(:,2));
hold on; 
plot(tout,x3(:,2));
hold on; 
plot(tout,x4(:,2));
hold on; 
plot(tout,x5(:,2));
hold on; 
grid minor; 
title('Position on x-axis');
legend('Desired','Robot 1','Robot 2','Robot 3','Robot 4','Robot 5');

pause;
close all;
%%
plot(tout,yd(1)*ones(length(tout),1),'--');
hold on;
plot(tout,y1(:,2));
hold on; 
plot(tout,yd(2)*ones(length(tout),1),'--');
hold on;
plot(tout,y2(:,2));
hold on;
plot(tout,yd(3)*ones(length(tout),1),'--');
hold on;
plot(tout,y3(:,2));
hold on;
plot(tout,yd(4)*ones(length(tout),1),'--');
hold on;
plot(tout,y4(:,2));
hold on;
plot(tout,yd(5)*ones(length(tout),1),'--');
hold on;
plot(tout,y5(:,2));
hold on;
grid minor;
title('Position on y-axis');
legend('Desired 1','Robot 1','Desired 2','Robot 2','Desired 3','Robot 3',...
'Desired 4','Robot 4','Desired 5','Robot 5');

pause;
close all;
%%
plot(tout,th1(:,2));
hold on;
plot(tout,th2(:,2));
hold on;
plot(tout,th3(:,2));
hold on;
plot(tout,th4(:,2));
hold on;
plot(tout,th5(:,2));
hold on;
grid minor;
title('Angle');
legend('Robot 1','Robot 2','Robot 3','Robot 4','Robot 5');

pause;
close all;
%%
plot(tout,v1(:,2));
hold on;
plot(tout,v2(:,2));
hold on;
plot(tout,v3(:,2));
hold on;
plot(tout,v4(:,2));
hold on;
plot(tout,v5(:,2));
hold on;
grid minor;
title('Linear velocity');
legend('Robot 1','Robot 2','Robot 3','Robot 4','Robot 5');

pause;
close all;
%%
plot(tout,u1(:,2));
hold on;
plot(tout,u2(:,2));
hold on;
plot(tout,u3(:,2));
hold on;
plot(tout,u4(:,2));
hold on;
plot(tout,u5(:,2));
hold on;
grid minor;
title('Angular velocity');
legend('Robot 1','Robot 2','Robot 3','Robot 4','Robot 5');

pause;
close all;
%%
plot(tout,Dmin(:,2));
grid minor;
title('Minimum Distance between Robots');

pause;
close all;
%%
viscircles([x1k y1k],r1k);
hold on;
viscircles([x2k y2k],r2k);
hold on;
plot(xdesired(:,2),yd(1)*ones(length(tout),1),'--');
hold on;
plot(xdesired(:,2),yd(2)*ones(length(tout),1),'--');
hold on;
plot(xdesired(:,2),yd(3)*ones(length(tout),1),'--');
hold on;
plot(xdesired(:,2),yd(4)*ones(length(tout),1),'--');
hold on;
plot(xdesired(:,2),yd(5)*ones(length(tout),1),'--');
hold on;
plot(x1(:,2),y1(:,2),'-r');
hold on;
plot(x2(:,2),y2(:,2),'-b');
hold on;
plot(x3(:,2),y3(:,2),'-g');
hold on;
plot(x4(:,2),y4(:,2),'-m');
hold on;
plot(x5(:,2),y5(:,2),'-k');
hold on;
grid minor;
title('Robot Trajectories');
legend('Desired 1','Desired 2','Desired 3','Desired 4','Desired 5',...
'Robot 1','Robot 2','Robot 3','Robot 4','Robot 5');

pause;
close all;
