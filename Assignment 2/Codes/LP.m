function [output, G_sq] = LP(filename, filter_order)
%Loading Audio File
[data, samp_freq] = audioread(filename);
%Setting window parameters
win_dur_ms = 30e-3;
win_samp = win_dur_ms*samp_freq;
hamming_window = hamming(win_samp);

%Windowed Signal
windowed_data = data(1:win_samp).*hamming_window;

%ACF
acf_op = ACF(windowed_data);

%Defining Variables
refl_coeff = zeros(1, filter_order);
a_matrix = zeros(filter_order, filter_order);
E = zeros(1, filter_order);

% for i=1
E0 = acf_op(1);
refl_coeff(1) = acf_op(2)/E0;
a_matrix(1, 1) = refl_coeff(1);
E(1) = (1-refl_coeff(1)^2)*E0;

% for i=2, ...., p
for i=2:filter_order
    sum_val=0;
    for j=1:(i-1)
        sum_val = sum_val + (a_matrix(i-1, j)*acf_op(i-j+1));
    end
    refl_coeff(i) = (acf_op(i+1) - sum_val)/E(i-1);
    a_matrix(i, i) = refl_coeff(i);
    for j=1:(i-1)
        a_matrix(i, j) = a_matrix(i-1, j) - refl_coeff(i)*a_matrix(i-1, i-j);
    end
    E(i) = (1-refl_coeff(i)^2)*E(i-1);
end
%Finding G
G_sq = acf_op(1) - sum(acf_op(2:(filter_order+1)).*a_matrix(filter_order, :));
%Plotting Transfer Function
num = zeros(1, filter_order+1);
num(1) = sqrt(G_sq); %Gain
den = zeros(1, filter_order+1);
den(2:end) = -a_matrix(filter_order, :);
den(1) = 1;

[output, ~] = freqz(num, den);
output = 20*log10(abs(output));
end