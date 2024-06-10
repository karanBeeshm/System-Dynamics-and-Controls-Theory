pkg load control

# |||||||||||||MASS|||||||||||||| #
#    |                       |    #
#  spring                  damper #
#    |                       |    #
#     \                     /     #
#      \                   /      #
#       \                 /       #
#        (((|||TIRE||||)))        #
#                                 #
# __________________              # ___
#                   |             #  |
#                   |             #  | 12.8 mm dip
#                   |____________ # _|_


# mass=500 kg  #
# k=3.2e5 N/m  #
# c=10000 Ns/m #

t = 0:0.005:5;
# Analytical solution
x_t = 0.0128*(1-1.1*exp(-10*t).*sin(23.2*t+66.734*pi/180) + 0.8605*exp(-10*t).*sin(23.3*t));
plot(t,x_t, "ro", "linewidth", 0.3);
hold on
# step input multiplied with transfer function
n=[20, 640]
d=[1, 20, 640]
x=0.0128*tf(n,d)
step(x)
