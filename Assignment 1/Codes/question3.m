%% Parameters

%All frequencies in Hz
samp_freq = 16e3;
duration = 0.5; %in seconds

%(a) F0 = 120 Hz, F1 = 300 Hz, B1 = 100 Hz
f0 = 120;
formant_freq = 300;
bandwidth = 100;
single_formant_analysis(formant_freq, f0, bandwidth, duration, samp_freq);

%(b) F0 = 120 Hz, F1=1200 Hz, B1 = 200 Hz
f0 = 120;
formant_freq = 1200;
bandwidth = 200;
single_formant_analysis(formant_freq, f0, bandwidth, duration, samp_freq);

%(c) F0 = 180 Hz, F1 = 300 Hz, B1 = 100 Hz 
f0 = 180;
formant_freq = 300;
bandwidth = 100;
single_formant_analysis(formant_freq, f0, bandwidth, duration, samp_freq);