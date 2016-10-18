function out=polyphase_filter(in, up_factor, down_factor)
lpf = lpf_create(down_factor);
E = polyphase_decompose_x(upsample(in,up_factor),down_factor);
LPF = poly1(lpf, down_factor);
LOW_SIG{size(E,1),1} = [];

for i=1:size(E,1)
    %LOW_SIG{i,1} = conv(downsample(E(i,:),down_factor),LPF(i,:));
    LOW_SIG{i,1} = fftfilt(LPF(i,:),E(i,:));
end;

LOW_SIG_M = cell2mat(LOW_SIG);
disp(size(LPF,2));
out = sum(LOW_SIG_M);

end
