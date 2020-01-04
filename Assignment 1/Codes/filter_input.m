function output = filter_input(f0, den, samp_freq, duration)
%% Input Data
input_data = zeros(1, samp_freq*duration); %Corresponding to 0.5s data
input_data(1:round(samp_freq/f0):end) = 1;

%% Convolution Parameters
filter_coeffs = -den;  %Coeffs are negative of each other except first one
filter_coeffs = filter_coeffs(2:end); %y[n-1] starts with second coeffs.
[~, filter_length] = size(filter_coeffs);

%% Time Domain Convolution
output = input_data;
[~, input_length] = size(input_data);

for iter=1:input_length
    for filter_iter=1:filter_length
        if iter - filter_iter < 1
            add_factor = 0; %y[n] = 0 for n < 1
        else
            add_factor = output(iter-filter_iter);
        end
        output(iter) = output(iter) + add_factor*filter_coeffs(filter_iter);
    end
end
end