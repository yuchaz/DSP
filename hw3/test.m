[h,g]=ifir(4,'low',[.12 .14],[.01 .001]);
input = [1 zeros(1,300)];

E = poly1(upsample(input,4),4);
%E = poly1(input,4);

LPF = poly1(h, 4);
LOW_SIG{size(E,1),1} = [];

for i=1:size(E,1)    
    LOW_SIG{i,1} = fftfilt(downsample(E(i,:),4),LPF(i,:));
    
    %filtered_sig = fftfilt(E(i,:),LPF(i,:));
    %LOW_SIG{i,1} = upsample(downsample(filtered_sig,4),4);
end;

LOW_SIG_M = cell2mat(LOW_SIG);

output = transpose(LOW_SIG_M(:));

desired_output = fftfilt(h,input);
O = dfilt.dffir(output);
DO = dfilt.dffir(desired_output);
hfv = fvtool(O);
legend(hfv,'Desired Output', 'Implemented Output');



