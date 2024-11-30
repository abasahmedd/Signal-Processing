clc;
clear;


samplefrequency = 1000;

%format(input message)
data = 'helloo';


%Source Encoder
binarydata = encmsg(data);
n = length(binarydata);

texttonum = sprintf('%d', binarydata); % create a serial from num or str
serialtonum= arrayfun(@(x) str2double(x), texttonum);
serialtonum(serialtonum > 1) = 1;
n2 = length(serialtonum);
serialtonum = reshape(serialtonum, 1, []);
repserialtonum = repelem(serialtonum,ceil(samplefrequency/n2)) ;
repserialtonum = repserialtonum(1:1001);
time = 0 :  0.001 : 1 ;
plot(time,repserialtonum);
axis auto;

%Encrypted
encrypteddata = encrypted(binarydata);
%Channel Encoder
outputCH = channelencoder(encrypteddata,((samplefrequency)/n));


%Multi-Plexing  ----------------------------> ٍSKIP
%Pulse Modulation
carriersignal = gesignal(1,10,1,1/samplefrequency);
modulationsignal = carriersignal .* outputCH ;
%plot(modulationsignal);
