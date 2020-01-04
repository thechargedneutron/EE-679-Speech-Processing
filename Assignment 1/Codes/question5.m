%% Global Variables
samp_freq = 16e3;
bandwidth = 100;

%% /a/ at f0 = 120
f0 = 120;
formant_freq = [730, 1090, 2440];

figure

x_points = (1:8000)/4000 - 1;

% 5 ms Rectangular Window
window_type=1;
window_size=5e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 1)
plot(x_points, dtft)
title('5ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 10 ms Rectangular Window
window_type=1;
window_size=10e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 3)
plot(x_points, dtft)
title('10ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 20 ms Rectangular Window
window_type=1;
window_size=20e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 5)
plot(x_points, dtft)
title('20ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 40 ms Rectangular Window
window_type=1;
window_size=40e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 7)
plot(x_points, dtft)
title('40ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 5 ms Hamming Window
window_type=2;
window_size=5e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 2)
plot(x_points, dtft)
title('5ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 10 ms Hamming Window
window_type=2;
window_size=10e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 4)
plot(x_points, dtft)
title('10ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 20 ms Hamming Window
window_type=2;
window_size=20e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 6)
plot(x_points, dtft)
title('20ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 40 ms Hamming Window
window_type=2;
window_size=40e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 8)
plot(x_points, dtft)
title('40ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

sgtitle('/a/ at f0 = 120')



%% /a/ at f0 = 220
f0 = 220;
formant_freq = [730, 1090, 2440];

figure

x_points = (1:8000)/4000 - 1;

% 5 ms Rectangular Window
window_type=1;
window_size=5e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 1)
plot(x_points, dtft)
title('5ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 10 ms Rectangular Window
window_type=1;
window_size=10e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 3)
plot(x_points, dtft)
title('10ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 20 ms Rectangular Window
window_type=1;
window_size=20e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 5)
plot(x_points, dtft)
title('20ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 40 ms Rectangular Window
window_type=1;
window_size=40e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 7)
plot(x_points, dtft)
title('40ms Rectangular Window')
xlabel('Normalized Frequency (in \pi rads)')

% 5 ms Hamming Window
window_type=2;
window_size=5e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 2)
plot(x_points, dtft)
title('5ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 10 ms Hamming Window
window_type=2;
window_size=10e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 4)
plot(x_points, dtft)
title('10ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 20 ms Hamming Window
window_type=2;
window_size=20e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 6)
plot(x_points, dtft)
title('20ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

% 40 ms Hamming Window
window_type=2;
window_size=40e-3*samp_freq; 
dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type);

subplot(4, 2, 8)
plot(x_points, dtft)
title('40ms Hamming Window')
xlabel('Normalized Frequency (in \pi rads)')

sgtitle('/a/ at f0 = 220')
