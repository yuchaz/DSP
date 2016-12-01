function [output,delta] = quantizer(in,down_freq)
maximum_bit_rates = 64000;

bit_per_sample = floor(maximum_bit_rates / down_freq);
delta = (std(in) / 2^(bit_per_sample-2.05));
output = delta * round(in / delta);

end

