function lpf = lpf_create(down_factor)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[h,g]=ifir(down_factor,'low',[.002893 .0033],[.1 .1]);
lpf = conv(h,g);

end

