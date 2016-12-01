compression_degree = 4;
[y,Fs] = audioread('./audio_files/1812.wav');
[pxx_1,w_1] = periodogram(y);
[pxx_2,w_2] = pwelch(y);
[pxx_3,w_3] = pyulear(y,20);
plot(w_1/pi,10*log10(pxx_1),w_2/pi,10*log10(pxx_2),w_3/pi,10*log10(pxx_3));
xlabel('normalized frequency \times\pi');
ylabel('log intensity');
legend('periodogram()','pwelch()','pyulear()')
% You should now calculate the ratio of loss.

ratio_pxx1 = loss_ratio(pxx_1,compression_degree);
ratio_pxx2 = loss_ratio(pxx_2,compression_degree);
ratio_pxx3 = loss_ratio(pxx_3,compression_degree);

% So in this case, I will choose pxx1. Or say, periodogram for my program.