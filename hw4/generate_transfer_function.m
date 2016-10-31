function [ b,a ] = generate_transfer_function()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
b_1 = [1 1];
b_2 = [1 -1.0166 1];
b = 0.05634*conv(b_1,b_2);

a_1 = [1 -0.683];
a_2 = [1 -1.4461 0.7957];
a = conv(a_1,a_2);

end

