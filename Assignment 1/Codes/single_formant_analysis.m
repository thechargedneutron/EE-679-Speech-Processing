function output = single_formant_analysis(formant_freq, f0, bandwidth, duration, samp_freq)


%% Transfer Function and Time Domain Output Signal
[~, ~, den] = design_tf(formant_freq, bandwidth, samp_freq);
output = filter_input(f0, den, samp_freq, duration);

%% Plotting over a few pitch periods
plot_samples = 500; %Plot 500 samples. 500 samples is considerably good
figure
plot((1:plot_samples)/samp_freq, output(1:plot_samples));
title(strcat('Excited Output Signal at F0 = ', num2str(f0), ' and F1 = ', num2str(formant_freq)));
ylabel('Amplitude')
xlabel('Time (in s)')

%% Saving half second audio output
scaled_output = (2/(max(output(:))-min(output(:))))*(output - min(output(:))) - 1;
audiowrite(strcat('output_F0_', num2str(f0), '_F1_', num2str(formant_freq),'.wav'), scaled_output, samp_freq);

end