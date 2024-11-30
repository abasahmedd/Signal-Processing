fs =1000;
t = 0 : 1/fs : 1-1/fs ; 
signal = (sin(2 * pi * 5 * t)) + 0.5*(rand(size(t)));

cutoff_freq = 10;


signal_f  = zeros(size(signal));
for i = 1 : length(signal)
    if i < cutoff_freq 
        signal_f(i) = mean(signal(1:i));
    else 
        signal_f(i) = mean(i-cutoff_freq+1:i);
    end
end
plot(t,signal_f)

