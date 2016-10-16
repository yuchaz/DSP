function out_signal=srconvert(in_signal)

upsampled_signal = upsample(in_signal, 320);
h = firls(555, [0,1/400,1/320,1],[1,1,0,0]);
filtered_signal = fftfilt(h,upsampled_signal);

out_signal = downsample(filtered_signal, 147);

return;