function dx = fun(t,x)
k=1.5;
b=2;
m=0.5;
A=[0, 1;-k/m, -b/m];
B=[0;1/m];
inp=10*exp(-t);
dx=A*x+B*inp;
