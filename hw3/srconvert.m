function out_signal=srconvert(in_signal)

upsampled_signal = upsample(in_signal, 320);

[h,g]=ifir(320,'low',[.003 .0031],[.01 .001]);
lp = fftfilt(h,g)

%h = firls(555, [0,1/400,1/320,1],[1,1,0,0]);
%h = intfilt(300,10,0.5);
%h = kaiser(1001, al)
%filtered_signal = filter(h,1,upsampled_signal);
filtered_signal = fftfilt(lp,upsampled_signal);

out_signal = downsample(filtered_signal, 147);

return;