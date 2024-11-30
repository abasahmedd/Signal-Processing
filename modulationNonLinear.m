

t = 0 : 1/1000 : 1 - 1/1000 ;
fm = 4 ;
fc = 10 ;
Am = 1 ; 
Ac = 1 ;
wm = 2 *pi * fm * t ;
wc = 2 *pi * fc * t ;
m = Am * cos(wm);
c = Ac * cos(wc);
mod = m.*c ;
plot(t,mod)