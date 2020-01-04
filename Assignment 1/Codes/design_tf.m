function [Hz, num, den] = design_tf(formant_freq, bandwidth, samp_freq)

%% Finding roots of the Transfer Function
r = exp(-bandwidth*pi*(1/samp_freq));
theta = 2*pi*formant_freq*(1/samp_freq);

[~, num_formant] = size(formant_freq);

den = 1;
for iter =  1:num_formant
    den = conv(den, [1, -2*r*cos(theta(iter)), r*r]);
end

num = zeros(size(den));
num(1) = 1; %Multiplying num and den by the highest power of denominator

Hz = tf(num, den, 1/samp_freq);
%%
% 
%  PREFORMATTED
%  TEXT
% 
end