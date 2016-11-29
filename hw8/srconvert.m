function output = srconvert(in,ups,dns)
max_value = max(ups,dns);
lpf = lpf_create(max_value);
uped = upsample(in,ups);
output = downsample(fftfilt(lpf,uped),dns);


end

