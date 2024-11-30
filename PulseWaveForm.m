
% sine advanced by 90 and delayed by 90
t = 0 :0.01 :1 ;
f = 1; 
w = 2*pi*f ;
x = sin(w*t);
%plot(x)
x2 = sin(w*t-pi/2);
%plot(x2)
x3 = sin(w*t+pi/2);
plot(x3)
%same process in cos 

