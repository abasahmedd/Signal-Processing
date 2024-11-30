
function wave = wave1(type,amplitude,frequency,samplingfrequency)

time = 0 : 1 / samplingfrequency : 1-1/samplingfrequency ;

switch lower(type)
case 'sin'

    wave = amplitude * sin(2 * pi * frequency * time) ;

case 'square' 

    wave = amplitude * square(2 * pi * frequency * time) ;

case 'sawtooth'

    wave = amplitude * sawtooth(2 * pi * frequency * time) ;

otherwise 
    disp('error choice another type of waveform');
end
