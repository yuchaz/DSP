N = 512;

a = [1 -1.85*cos(pi/18) 0.83];
b = [1 1/3];

[freq_response, w] = freqz(b,a,N)

subplot(2,1,1);
plot(w/pi, 20*log10(abs(freq_response)));
title('Magnitude of Frequency response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');

subplot(2,1,2);
plot(w/pi, angle(freq_response));
title('Phase angle of Frequency response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Angle (rad)');