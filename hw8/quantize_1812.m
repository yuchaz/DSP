ups = 2;
dns = 5;
maximum_bit_rates = 64000;
[y,Fs] = audioread('./audio_files/1812.wav');
down_freq = Fs*ups/dns;
bit_per_sample = floor(maximum_bit_rates / down_freq);
%y_d = resample(y,ups,dns);
y_d = srconvert(y,ups,dns);
std_y_d = std(y_d);
delta = (std_y_d / 2^(bit_per_sample-2.05));
y_head = quantizer(y_d, delta);
%y_restore = resample(y_head, dns, ups);
y_restore = srconvert(y_head, dns, ups);
err = y - y_restore;
sound(y_restore,Fs);
std(err)