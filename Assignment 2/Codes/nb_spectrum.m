function output = nb_spectrum(filename, preemph_flag)
% Load data
[data, samp_freq] = audioread(filename);

%Pre emphasis filter
if preemph_flag == 1
    alpha = 0.95;
    data_filtered = data - alpha*[0; data(1:(end-1))];
else
    data_filtered = data;
end

%Choosing values from approx middle
dur = 30e-3;
num_samples = dur*samp_freq;
start_index = round((length(data_filtered)/2) - num_samples/2); %Window centered at data center
data_narrow = data_filtered(start_index:(start_index+num_samples-1));
filter_hamming = hamming(num_samples);

final_data = data_narrow.*filter_hamming;

output = abs(fft(final_data, 1024));
output = 20*log10(output(1:512));
%plot((1:512), 10*log10(output(1:512)));
end