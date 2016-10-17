function out=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

uped_sig = upsample(in, UP_FACTOR);
E = poly1(uped_sig,DOWN_FACTOR);

[lp,g]=ifir(DOWN_FACTOR,'low',[.0035 .0037],[.01 .0001]);
LPF = poly1(lp, DOWN_FACTOR);

filtered_matrix = {};
filtered_matrix{size(E,1),1} = [];

for i=1:size(E,1)
    down_sig = downsample(E(i,:), DOWN_FACTOR);
    filtered_matrix{i,1} = fftfilt(LPF(i,:),down_sig);
end;

FM = cell2mat(filtered_matrix);

out = transpose(FM(:));

return;