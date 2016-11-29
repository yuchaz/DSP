function output = quantizer(input_sig, delta)

output = delta * round(input_sig / delta);
end

