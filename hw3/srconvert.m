function out=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

uped_sig = upsample(in, UP_FACTOR);
E = poly1(uped_sig,DOWN_FACTOR);
a = 1;
b = [1/4 1/4 1/4 1/4];

[h,g]=ifir(147,'low',[.0035 .0037],[.01 .0001]);
%lp = fftfilt(h,g)
lp=h;

filtered_matrix = {};
filtered_matrix{size(E,1),1} = [];
for i=1:size(E,1)
    filtered_sig = filter(b,a,E(i,:));
    filtered_matrix{i,1} = downsample(filtered_sig, DOWN_FACTOR);
end;

FM = cell2mat(filtered_matrix);

out = transpose(FM(:));
%uped_signal = upsample(in, UP_FACTOR);

%[h,g]=ifir(UP_FACTOR,'low',[.003 .0031],[.01 .001]);
%lp = fftfilt(h,g)

%filtered_signal = fftfilt(lp,uped_signal);

%out = downsample(filtered_signal, DOWN_FACTOR);

return;