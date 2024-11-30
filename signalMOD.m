format short
B =1000;
amp = 1 ;
f = 5;
samplefreq = 1000;
t = 0 : 1/samplefreq : 1 - 1/samplefreq;
w = 2 * pi * f * t ;
signal = amp * sin(w);
noise = rand(size(signal));
swn =signal + noise ;
%s2nr = 10*log10(mean(signal.^2));
%BER  = 1/(2*s2ns);
plot(s2nr)
hold on 