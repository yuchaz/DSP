function out=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

uped_sig = upsample(in, UP_FACTOR);
E = poly1(uped_sig,DOWN_FACTOR);

[h,g]=ifir(DOWN_FACTOR,'low',[.0035 .0037],[.01 .0001]);
lp=h;
LPF = poly1(lp, DOWN_FACTOR);

filtered_matrix = {};
filtered_matrix{size(E,1),1} = [];
for i=1:size(E,1)
    filtered_sig = fftfilt(LPF(i,:),E(i,:));
    filtered_matrix{i,1} = downsample(filtered_sig, DOWN_FACTOR);
end;

FM = cell2mat(filtered_matrix);
out = transpose(FM(:));

return;