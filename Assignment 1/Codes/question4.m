%% Global Variables
samp_freq = 16e3;
bandwidth = 100;

%% /a/ at f0 = 120
f0 = 120;
formant_freq = [730, 1090, 2440];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'a-120.wav');

%% /a/ at f0 = 220
f0 = 220;
formant_freq = [730, 1090, 2440];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'a-220.wav');

%% /i/ at f0 = 120
f0 = 120;
formant_freq = [270, 2290, 3010];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'i-120.wav');

%% /i/ at f0 = 220
f0 = 220;
formant_freq = [270, 2290, 3010];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'i-220.wav');

%% /u/ at f0 = 120
f0 = 120;
formant_freq = [300, 870, 2240];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'u-120.wav');

%% /u/ at f0 = 220
f0 = 220;
formant_freq = [300, 870, 2240];
process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 1, 'u-220.wav');