function dtft = compute_dtft(f0, formant_freq, bandwidth, samp_freq, window_size, window_type)
% Window type is 1 for rectangular and 2 for hamming

data = process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, 0, '');
[~, data_points] = size(data);

if window_type == 1
    window = ones(1, window_size);
else
    window = hamming(window_size)';
end

windowed_data = zeros(size(data));
windowed_data(1:window_size) = window.*data(1:window_size);

dtft = fft(windowed_data);
dtft = circshift(20*log10(abs(dtft)), data_points/2);

end