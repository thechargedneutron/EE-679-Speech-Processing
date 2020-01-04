function [output, data_narrow] = residue_signal(filename, filter_order, preemph_flag)
%Loading Audio File
[data, samp_freq] = audioread(filename);

%Setting window parameters
win_dur_ms = 30e-3;
win_samp = win_dur_ms*samp_freq;
start_index = round((length(data)/2) - win_samp/2); %Window centered at data center
data_narrow = data(start_index:(start_index+win_samp-1));

%Getting a's
[~, ~, a, G_sq] = LP_Q2(filename, filter_order, preemph_flag);

%Changing coeffs to +ve again
a = -a;
a(1) = -a(1);

%Getting Residue Output
output = conv(a, data_narrow);
output = output/sqrt(G_sq);

end