%% Parameters
%All frequencies in Hz
samp_freq = 16e3;
f0 = 140;
formant_freq = 900;
bandwidth = 200;
duration = 0.5; %in seconds

single_formant_analysis(formant_freq, f0, bandwidth, duration, samp_freq);