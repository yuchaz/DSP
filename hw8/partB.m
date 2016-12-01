ups = 1;
dns = 2;
delay_by = 2;
[y,Fs] = audioread('./audio_files/1812.wav');
down_freq = Fs*ups/dns;

[y_d,lpf1] = srconvert(y,ups,dns);
[y_head,delta] = quantize_with_freq(y_d, down_freq);
[y_restore,lpf2] = srconvert(y_head, dns, ups);
y_delay = [zeros(delay_by,1); y(1:length(y)-delay_by)];
err = y_delay - y_restore;
experiment_error = rms(err).^2;
[pee,~] = periodogram(err);
experiment_error_parseval = sum(abs(pee).^2)/Fs/2/pi;

correlation = rms(lpf2).^2*length(lpf2);
hac1 = dsp.Autocorrelator;
cor_1 = conv(hac1(lpf1),y);
cor_2 = hac1(lpf2);
COR1 = fft(cor_1);
estimated_error_parseval = sum(abs(COR1).^2)/2/pi*delta.^2/12;
out = conv(cor_1, cor_2);
[pxx,~] = periodogram(y);
estimated_error = partial_energy(pxx,dns/ups)/pi*delta.^2/12;
%estimated_error = correlation*delta.^2/12*partial_energy(pxx,dns/ups)/pi;
%estimated_error = rms(pxx).^2;
%estimated_error = rms(y).^2*441000*delta.^2/12;