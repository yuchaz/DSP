function out=simple_filter(in, up_factor, down_factor)

lpf = lpf_create(down_factor);
uped = upsample(in, up_factor);
low_only_sig = fftfilt(lpf, uped);
out = downsample(low_only_sig, down_factor);
end

