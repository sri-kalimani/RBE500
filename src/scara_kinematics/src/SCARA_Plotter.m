A=csvread('/home/ben/RBE500/src/scara_kinematics/src/output.txt');
n=length(A);
goal_position_1=    A(1:n,1);
current_position_1= A(1:n,2);
goal_position_2=    A(1:n,3);
current_position_2= A(1:n,4);
goal_position_3=    A(1:n,5);
current_position_3= A(1:n,6);

time=A(1:n,7);
subplot(3,1,1)
plot(time,goal_position_1,'-b')
ylim([-4 4])
hold ON
plot(time,current_position_1,'-r')
subplot(3,1,2)
plot(time,goal_position_2,'-b')
ylim([-4 4])
hold ON
plot(time,current_position_2,'-r')
subplot(3,1,3)
plot(time,goal_position_3,'-b')
hold ON
plot(time,current_position_3,'-r')