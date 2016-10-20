function lpf = lpf_create(down_factor)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[h,g]=ifir(down_factor,'low',[.0033 .0037],[.01 .0001]);
lpf = h;

end

