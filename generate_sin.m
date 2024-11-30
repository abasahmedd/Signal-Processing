
%Create Signal(sine wave) function

function signal = generate_sin(amplitude,frequency,samplingfrequency)
time = 0 :  1/samplingfrequency : 1 - 1/samplingfrequency ;
w =  2 * pi * frequency * time ;
signal = amplitude * sin(w) ;
end


%sampling frequency(fs) = 1/sampling period 