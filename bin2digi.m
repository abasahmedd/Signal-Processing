function [Digital_Signal,time] = bin2digi(Ts,SampingFreq,BinaryData)

Bcount = length(BinaryData); 
time = linspace(0 , Bcount*Ts , Bcount*Ts*SampingFreq);
Digital_Signal = repelem(BinaryData, Ts*SampingFreq);
end