
clc 
clear

fs = 1000;
time = 0 :  1/fs : 1 - 1/fs ;

s1 = generate_sin(1,600,fs); 
s2 = generate_sin(1,500,fs); 
s3 = s1+s2;
s4 = noise_signal(s3,75);

s5=fft(s4);
s6 = abs(s5/fs);

signal = s6(1: fs/2 );
signal(2:end -1) = 4*signal(2:end-1);
amplitude =  200 * ( 0 : (fs/2 - 1) ) /fs;

subplot(2, 2, 4);
plot(amplitude, signal);
xlabel('Frequecny (Hz)');
ylabel('Amplitude');
title('Signal  (Frequency Domain)');

subplot(2, 2, 1);
plot(time, s2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal 2 (Time Domain)');

subplot(2, 2, 2);
plot(time, s4);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal 2 (Time Domain)');
