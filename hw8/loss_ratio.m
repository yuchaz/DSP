function ratio = loss_ratio( y,degree_of_compress )
partial_length = round(length(y)/(2*degree_of_compress));

partial_energy = sum(abs(y(1:partial_length)),1);

total_energy = sum(abs(y));
ratio = partial_energy / total_energy;

end

