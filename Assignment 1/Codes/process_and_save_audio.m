function scaled_output = process_and_save_audio(f0, formant_freq, bandwidth, samp_freq, save_audio, filename) 

[~, ~, denominator] = design_tf(formant_freq, bandwidth, samp_freq);
output = filter_input(f0, denominator, samp_freq, 0.5);
%Scaling the output while saving to audio file
scaled_output = (2/(max(output(:))-min(output(:))))*(output - min(output(:))) - 1;
if save_audio == 1
    audiowrite(filename, scaled_output, samp_freq);
end
end