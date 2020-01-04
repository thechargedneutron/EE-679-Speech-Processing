function output = ACF(input)
n_points = length(input);
%disp(n_points)
output = zeros(1, n_points);

padded_data = zeros(2*n_points, 1);

for iter=1:n_points
    padded_data(iter:(iter+n_points-1)) = input;
    %size(input)
    %size(padded_data(1:n_points))
    %disp(sum(input.*padded_data(1:n_points)));
    output(iter) = sum(input.*padded_data(1:n_points)); %output(1) coresponds to r(0)
    padded_data = zeros(2*n_points, 1);
end

end