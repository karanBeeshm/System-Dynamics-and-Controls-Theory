pkg load symbolic
syms s

A = [s+2 -1;-1 s+3];
B = [2/(s+3);0];
X_a= inv(A)*B;
X_t= ilaplace(X_a);

t=0:0.05:10;
y1=function_handle(X_t(1));
y2=function_handle(X_t(2));

plot(t,y1(t),"ro","markersize",5)
hold on
plot(t,y2(t),"bo","markersize",5)
xlabel("t")
legend("x1","x2")
ylabel("x(t)")
