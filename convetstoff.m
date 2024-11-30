
clc 
clear

fs = 1000;
time = 0 :  1/fs : 1 - 1/fs ;

s1 = generate_sin(1,200,fs); 
s2 = noise_signal(s1,75);

s4=fft(s3);
s5 = abs(s4/fs);

signal = s5(1: fs/2 );
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
