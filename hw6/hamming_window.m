lpf = generate_lpf(29);
hamming_lpf = hamming(29).'.*lpf;
delta = [1 zeros(1,200)];
impulse_response = conv(hamming_lpf,delta);
subplot(2,1,1);
plot(impulse_response);
xlim([0 50]);

freq_response = fft(hamming_lpf, 200);
x_range = linspace(0,1,100);
subplot(2,1,2);
plot(x_range, abs(freq_response(1:100)));