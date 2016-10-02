SIZE_OF_SAMPLE = 51

a = [1 -1.7163 1.1724 -0.2089]
b = [0.5264 -1.5224 1.5224 -0.5264]

impulse = [1 zeros(1,SIZE_OF_SAMPLE-1)]

impulse_response = filter(b,a,impulse)
impulse_response_axis = 0:SIZE_OF_SAMPLE-1
subplot(2,1,1)
plot(impulse_response_axis, impulse_response)
title('Impulse response')
xlabel('n')
ylabel('Magnitude')

subplot(2,1,2)
[freq_response, w] = freqz(b,a)
plot(w/pi,20*log10(abs(freq_response)))
title('Frequency response')
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
ylim([-70,10])