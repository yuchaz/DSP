function output=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

lpf = lpf_create(DOWN_FACTOR);
E = polyphase_decompose_x(upsample(in,UP_FACTOR),DOWN_FACTOR);
LPF = poly1(lpf, DOWN_FACTOR);
LOW_SIG{size(E,1),1} = [];

for i=1:size(E,1)
    LOW_SIG{i,1} = fftfilt(LPF(i,:),E(i,:));
end;

LOW_SIG_M = cell2mat(LOW_SIG);
output = sum(LOW_SIG_M);

return;