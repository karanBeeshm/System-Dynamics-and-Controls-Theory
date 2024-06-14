pkg load control

# random 1
n1=[1 7 12];
d1=[1 3 2];
sys1=tf(n1,d1);

# random 2
n2=[1 8 12];
d2=[1 8 29];
sys2=tf(n2,d2);

# random 3
n3=[1];
d3=[1  7 15 13 4];
sys3=tf(n3,d3);

# random 4
n4=[0 0 0 1 3];
d4=[1 5 20 16 0];
sys4=tf(n4,d4);

# random 5
n5=[1 2 2];
d5=[1 9 33 1 51 26 0];
sys5=tf(n5,d5);

figure(1)
rlocus(sys1);

figure(2)
rlocus(sys2);

figure(3)
rlocus(sys3);

figure(4)
rlocus(sys4);

figure(5)
rlocus(sys5);
