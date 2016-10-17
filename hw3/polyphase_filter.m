function out=polyphase_filter(in, up_factor, down_factor)
lpf = lpf_create(down_factor);
E = poly1(upsample(in,up_factor),down_factor);

LPF = poly1(lpf, down_factor);
LOW_SIG{size(E,1),1} = [];

for i=1:size(E,1)
    LOW_SIG{i,1} = fftfilt(downsample(E(i,:),down_factor),LPF(i,:));
end;

LOW_SIG_M = cell2mat(LOW_SIG);
out = transpose(LOW_SIG_M(:));

end

