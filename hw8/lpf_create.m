function lpf = lpf_create(freq)
%disp(freq);
%[h,g]=ifir(freq,'low',[0.86/(freq+1) 1/(freq+1)],[.1 .1]);
%lpf = conv(h,g);

f = [0 0.86/(freq) 1/(freq) 1];
a = [1 1 0 0];
lpf = firpm(40,f,a);

end

