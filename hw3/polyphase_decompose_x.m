function out=poly_decompose_x(in, down_rate)

vec_to_decompose = [zeros(1,down_rate-1) in];
decomposed_vec = poly1(vec_to_decompose, down_rate);
out = flipud(decomposed_vec);

end
