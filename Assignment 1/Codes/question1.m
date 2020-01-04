%% Data
%Frequencies in Hertz
formant_freq = 900;
bandwidth = 200;
samp_freq = 16e3;

%% Transfer Function 
[Hz, num, den] = design_tf(formant_freq, bandwidth, samp_freq);
[h, w] = freqz(num, den);

figure
plot((w*samp_freq)/(2*pi), 20*log10(abs(h)))
title('Magnitude (dB) Plot of Filter Transfer Function')
ylabel('Magnitude (in dB)')
xlabel('Frequency (in Hz)')


[val, index] = impz(num, den);

figure
plot(index/(samp_freq), val)
title('Time Domain Impulse Response of Filter Transfer Function')
ylabel('Magnitude')
xlabel('Time (in s)')
