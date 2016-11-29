[y,Fs] = audioread('./audio_files/1812.wav');
[pxx_1,w_1] = periodogram(y);
[pxx_2,w_2] = pyulear(y,9999);
plot(w_1/pi,10*log10(pxx_1),w_2/pi,10*log10(pxx_2));