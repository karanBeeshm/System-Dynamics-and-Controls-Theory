pkg load symbolic
pkg load control
syms s

# A*dh/dt + 1/R*h = P/rho*g*R #
# A=3.44 m^2                  #
# R=17.78 s/m^2               #
# P=2.5 kPa=2500 N/m^2        #
# rho=1000 kg/m^3             #
# g=9.8 m/s^2                 #

# h=measures change in height #


H=0.00416/(s*(s+0.0163)); # transfer function
h=ilaplace(H)             # inverse lapace to het h(t)
Ts=(4*1/0.0163);          # manually solving h(t)=0.255 - 0.255e(-0.0163*t)
                          # 1/T = 0.0163 in the equation Ts = 4*T where Ts is
                          # settling time for the system
hs=function_handle(h);

n=[0.00416];
d=[1, 0.0163];
g=tf(n,d)                 # generating plot using inbuilt transfer function
step(g)
text(Ts,hs(Ts),"settling time")

