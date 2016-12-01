[y_bird,~] = audioread('./audio_files/Bird.wav');
[y_nocture,~] = audioread('./audio_files/Nocture.wav');
[y_partita,~] = audioread('./audio_files/Partita.wav');
[y_woodwind,~] = audioread('./audio_files/Woodwind.wav');

[pxx_bird,w_bird] = periodogram(y_bird);
[pxx_nocture,w_nocture] = periodogram(y_nocture);
[pxx_partita,w_partita] = periodogram(y_partita);
[pxx_woodwind,w_woodwind] = periodogram(y_woodwind);

subplot(4,1,1);
plot(w_bird/pi,10*log10(pxx_bird));
axis([0 1 -150 50]);
xlabel('normalized frequency \times\pi');
ylabel('log intensity');
title('Spectral Analysis of Bird.wav')

subplot(4,1,2);
plot(w_nocture/pi,10*log10(pxx_nocture));
axis([0 1 -150 50]);
xlabel('normalized frequency \times\pi');
ylabel('log intensity');
title('Spectral Analysis of Nocture.wav')

subplot(4,1,3);
plot(w_partita/pi,10*log10(pxx_partita));
axis([0 1 -150 50]);
xlabel('normalized frequency \times\pi');
ylabel('log intensity');
title('Spectral Analysis of Partita.wav')

subplot(4,1,4);
plot(w_woodwind/pi,10*log10(pxx_woodwind));
axis([0 1 -150 50]);
xlabel('normalized frequency \times\pi');
ylabel('log intensity');
title('Spectral Analysis of Woodwind.wav')
