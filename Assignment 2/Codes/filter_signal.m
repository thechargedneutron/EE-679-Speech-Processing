function output = filter_signal(input, coeffs, filter_order)

%% Time Domain Convolution
output = input;
[~, input_length] = size(input);

coeffs = coeffs(2:end);

for iter=1:input_length
    for filter_iter=1:filter_order
        if iter - filter_iter < 1
            add_factor = 0; %y[n] = 0 for n < 1
        else
            add_factor = output(iter-filter_iter);
        end
        output(iter) = output(iter) + add_factor*coeffs(filter_iter);
    end
end


end