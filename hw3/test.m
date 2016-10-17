[h,g]=ifir(4,'low',[.12 .14],[.01 .001]);
input = [1 zeros(1,300)];
E = poly1(input,4);

LPF = poly1(h, 4);
LOW_SIG{size(E,1),1} = [];

for i=1:size(E,1)    
    
    poly_with_down = downsample(filtered_sig,4);
    
    LOW_SIG{i,1} = upsample(poly_with_down,4);
end;

LOW_SIG_M = cell2mat(LOW_SIG);

output = transpose(LOW_SIG_M(:));

desired_output = fftfilt(h,input);
O = dfilt.dffir(output);
DO = dfilt.dffir(desired_output);
hfv = fvtool(O, DO);
legend(hfv,'Implmented Output', 'Desired output');



