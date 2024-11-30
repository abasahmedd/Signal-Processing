


function signal_with_noise = noise_signal(signal,noise_ratio)

x =  noise_ratio / 100 ; 
noise = x * rand(size(signal)) ;
signal_with_noise = signal + noise  ; 

end