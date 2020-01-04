function output = orig_spectrum(formant_freq, bandwidth, samp_freq)

[~, num, den] = design_tf(formant_freq, bandwidth, samp_freq);

[output, ~] = freqz(num, den);
output = 20*log10(abs(output));
end