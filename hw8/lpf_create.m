function lpf = lpf_create(freq)
disp(freq);
[h,g]=ifir(freq,'low',[0.86/(freq+1) 1/(freq+1)],[.1 .1]);
lpf = conv(h,g);


end

