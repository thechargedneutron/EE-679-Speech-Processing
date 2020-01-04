%% Part A Assignment
%% /a/ at 120Hz for various Filter Orders

[data_2, G_2] = LP('a_120.wav', 2); %Filter Order = 2
[data_4, G_4] = LP('a_120.wav', 4); %Filter Order = 4
[data_6, G_6] = LP('a_120.wav', 6); %Filter Order = 6
[data_8, G_8] = LP('a_120.wav', 8); %Filter Order = 8
[data_10, G_10] = LP('a_120.wav', 10); %Filter Order = 10
data_orig = orig_spectrum([730, 1090, 2440], 100, 8e3); %Original Signal

figure
hold on
plot((1:length(data_orig))*4000/length(data_orig), 10*12 + data_orig)
plot((1:length(data_2))*4000/length(data_2), 10*10 + data_2)
plot((1:length(data_4))*4000/length(data_4), 10*8 + data_4)
plot((1:length(data_6))*4000/length(data_6), 10*6 + data_6)
plot((1:length(data_8))*4000/length(data_8), 10*4 + data_8)
plot((1:length(data_10))*4000/length(data_10), 10*2 + data_10)
xlim([0 4000])
ylim([-40 150])
y = -40:150;
x = 730*ones(1, length(y));
plot(x, y, '.')
x = 1090*ones(1, length(y));
plot(x, y, '.')
x = 2440*ones(1, length(y));
plot(x, y, '.')
lgnd = legend('Original', 'Order 2','Order 4', 'Order 6', 'Order 8', 'Order 10', '730Hz', '1090 Hz', '2440 Hz');
set(lgnd,'color','none');
hold off
title('Plot for \a\ at 120 Hz')
xlabel('Frequency in Hz')
ylabel('Shifted Spectrum for different Filter Orders')
set(gca,'YTick', [])

disp('Gain Values are -')
disp(strcat('Order 2: ', num2str(sqrt(G_2))))
disp(strcat('Order 4: ', num2str(sqrt(G_4))))
disp(strcat('Order 6: ', num2str(sqrt(G_6))))
disp(strcat('Order 8: ', num2str(sqrt(G_8))))
disp(strcat('Order 10: ', num2str(sqrt(G_10))))

%% /a/ at 220Hz for various Filter Orders

[data_2, G_2] = LP('a_220.wav', 2); %Filter Order = 2
[data_4, G_4] = LP('a_220.wav', 4); %Filter Order = 4
[data_6, G_6] = LP('a_220.wav', 6); %Filter Order = 6
[data_8, G_8] = LP('a_220.wav', 8); %Filter Order = 8
[data_10, G_10] = LP('a_220.wav', 10); %Filter Order = 10
data_orig = orig_spectrum([730, 1090, 2440], 100, 8e3); %Original Signal

figure
hold on
plot((1:length(data_orig))*4000/length(data_orig), 10*12 + data_orig)
plot((1:length(data_2))*4000/length(data_2), 10*10 + data_2)
plot((1:length(data_4))*4000/length(data_4), 10*8 + data_4)
plot((1:length(data_6))*4000/length(data_6), 10*6 + data_6)
plot((1:length(data_8))*4000/length(data_8), 10*4 + data_8)
plot((1:length(data_10))*4000/length(data_10), 10*2 + data_10)
xlim([0 4000])
ylim([-40 150])
y = -40:150;
x = 730*ones(1, length(y));
plot(x, y, '.')
x = 1090*ones(1, length(y));
plot(x, y, '.')
x = 2440*ones(1, length(y));
plot(x, y, '.')
lgnd = legend('Original', 'Order 2','Order 4', 'Order 6', 'Order 8', 'Order 10', '730Hz', '1090 Hz', '2440 Hz');
set(lgnd,'color','none');
hold off
title('Plot for \a\ at 220 Hz')
xlabel('Frequency in Hz')
ylabel('Shifted Spectrum for different Filter Orders')
set(gca,'YTick', [])

disp('Gain Values are -')
disp(strcat('Order 2: ', num2str(sqrt(G_2))))
disp(strcat('Order 4: ', num2str(sqrt(G_4))))
disp(strcat('Order 6: ', num2str(sqrt(G_6))))
disp(strcat('Order 8: ', num2str(sqrt(G_8))))
disp(strcat('Order 10: ', num2str(sqrt(G_10))))

%%
% *Comment on the characteristics of spectral approximation*
% We can observe that with increasing order of coefficients, we are able to
% approximate the original signal in a better way. The formant frequencies
% are nicely captured in Filter order 10 but becomes less evident in order
% 2.
