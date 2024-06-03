function dx = fun_2(t,x)
k=5;
m=0.5;
A=[0, 1;-k/m, 0];
B=[0;1/m];
inp=2;
dx=A*x+B*inp;

end;
