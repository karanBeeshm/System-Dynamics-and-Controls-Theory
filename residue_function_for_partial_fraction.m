N1 = [2];
D1 = [1 5 5];
[r1, p1, k1] = residue(N1,D1)

N2 = [2];
D2 = [1 8 20 15];
[r2, p2, k2] = residue(N2,D2)

t = 0:0.05:10;

x1 = r1(1)*exp(p1(1)*t)+r1(2)*exp(p1(2)*t);
x2 = r2(1)*exp(p2(1)*t)+r2(2)*exp(p2(2)*t)+r2(3)*exp(p2(3)*t);

plot(t,x1,'ro',"markersize", 5)
hold on
plot(t,x2,'go',"markersize", 5)
legend('x1', 'x2')
