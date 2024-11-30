Rb = 6e6; 
W = 2e6;  
alpha = 0.3; 
M = 16;  
SNR_dB = 0:2:30; 
Rs = Rb / log2(M); 

BER = zeros(size(SNR_dB)); 
for i = 1:length(SNR_dB)
    SNR_linear = 10^(SNR_dB(i)/10); 
    BER(i) = (2 * (M - 1) / M) * erfc(sqrt(3 * log2(M) * SNR_linear / (M^2 - 1))); 
end

figure;
semilogy(SNR_dB, BER);

title('BER vs SNR for 16-PAM');
xlabel('SNR (dB)');
ylabel('BER');
legend('16-PAM');
