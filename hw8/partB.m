ups = 1;
dns = 4;
delay_by = 2;
[y,Fs] = audioread('./audio_files/1812.wav');
down_freq = Fs*ups/dns;

[y_d,lpf1] = srconvert(y,ups,dns);
[y_head,delta] = quantizer(y_d, down_freq);
[y_restore,lpf2] = srconvert(y_head, dns, ups);

y_delay = [zeros(delay_by,1); y(1:length(y)-delay_by)];
err = y_delay - y_restore;
experiment_error = rms(err).^2;

correlation = rms(lpf2).^2*length(lpf2);
hac1 = dsp.Autocorrelator;
[pxx,~] = periodogram(y);
[pxx_lpf,~] = periodogram(lpf1);
estimated_error = rms(pxx).^2*length(pxx)*delta.^2/12*rms(pxx_lpf).^2*length(pxx_lpf)/2/pi;