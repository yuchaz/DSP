function out_signal=srconvert(in_signal, al)

upsampled_signal = upsample(in_signal, 320);
%h = firls(555, [0,1/400,1/320,1],[1,1,0,0]);
h = kaiser(3000, al)
filtered_signal = fftfilt(h,upsampled_signal);

out_signal = downsample(filtered_signal, 147);

return;