function out=polyphase_filter(in, up_factor, down_factor)

uped = upsample(in, up_factor);
lpf = lpf_create(down_factor);

E = poly1(uped,down_factor);
LPF = poly1(lpf, down_factor);

filtered_matrix{size(E,1),1} = [];

for i=1:down_factor
    down_sig = downsample(E(i,:), down_factor);
    filtered_matrix{i,1} = fftfilt(LPF(i,:),down_sig);
end;

FM = cell2mat(filtered_matrix);
out = transpose(FM(:));

end

