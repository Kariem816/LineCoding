bitsNo = 100; % total number of bits in signal
signal = randi([0, 1], 1, bitsNo); % randomizing signal
bitrate = 1; % bits per second
figure(1); %time domain UniPolar-NRZ code
[t, s] = upnrz(signal, bitrate);
plot(t, s, 'LineWidth', 3);
axis([0 t(end) -0.1 1.1])
grid on;
h_1 = xlabel('time', 'FontSize', 30); get(h_1);
h_2 = ylabel('s(t)', 'FontSize', 30); get(h_2);
h_3 = title('Unipolar-NRZ', 'FontSize', 30); get(h_3);
figure(2); %frequency domain UniPolar-NRZ code
ts = t(end) / (length(t) - 1); %time step
ft = 1 / ts; %total frequency
fs = 1 / (length(t) * ts); %frequency step

if (mod(ft, 2) == 1)
    f = (-0.5 * ft):fs:(0.5 * ft);
else
    f = (-0.5 * ft):fs:((0.5 * ft) - fs);
endif

S = fftshift(abs(fft(s))) / length(t); %S(f) => fourier transform of s(t)
plot(f, S, 'LineWidth', 3);
grid on;
h_4 = xlabel('frequency', 'FontSize', 30); get(h_4);
h_5 = ylabel('S(f)', 'FontSize', 30); get(h_5);
h_6 = title('UniPolar-NRZ linecode in frequency domain', 'FontSize', 30); get(h_6);
figure(3); %time domain manchester code
[t, s] = manchester(signal, bitrate);
plot(t, s, 'LineWidth', 3);
axis([0 t(end) -1.1 1.1])
grid on;
h_7 = xlabel('time', 'FontSize', 30); get(h_7);
h_8 = ylabel('s(t)', 'FontSize', 30); get(h_8);
h_9 = title('Manchester', 'FontSize', 30); get(h_9);
figure(4); %frequency domain manchester code
ts = t(end) / (length(t) - 1); %time step
ft = 1 / ts; %total frequency
fs = 1 / (length(t) * ts); %frequency step

if (mod(ft, 2) == 1)
    f = (-0.5 * ft):fs:(0.5 * ft);
else
    f = (-0.5 * ft):fs:((0.5 * ft) - fs);
endif

S = fftshift(abs(fft(s))) / length(t); %S(f) => fourier transform of s(t)
plot(f, S, 'LineWidth', 3);
grid on;
h_10 = xlabel('frequency', 'FontSize', 30); get(h_10);
h_11 = ylabel('S(f)', 'FontSize', 30); get(h_11);
h_12 = title('Manchester linecode in frequency domain', 'FontSize', 30); get(h_12);

% Bonus Code

figure(5); %time domain UniPolar-RZ code
[t, s] = uprz(signal, bitrate);
plot(t, s, 'LineWidth', 3);
axis([0 t(end) -0.1 1.1])
grid on;
h_13 = xlabel('time', 'FontSize', 30); get(h_13);
h_14 = ylabel('s(t)', 'FontSize', 30); get(h_14);
h_15 = title('Unipolar-RZ', 'FontSize', 30); get(h_15);
figure(6); %frequency domain UniPolar-RZ code
ts = t(end) / (length(t) - 1); %time step
ft = 1 / ts; %total frequency
fs = 1 / (length(t) * ts); %frequency step

if (mod(ft, 2) == 1)
    f = (-0.5 * ft):fs:(0.5 * ft);
else
    f = (-0.5 * ft):fs:((0.5 * ft) - fs);
endif

S = fftshift(abs(fft(s))) / length(t); %S(f) => fourier transform of s(t)
plot(f, S, 'LineWidth', 3);
grid on;
h_16 = xlabel('frequency', 'FontSize', 30);
get(h_16);
h_17 = ylabel('S(f)', 'FontSize', 30);
get(h_17);
h_18 = title('UniPolar-NRZ linecode in frequency domain', 'FontSize', 30);
get(h_18);
