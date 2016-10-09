b = [4 0 0 0 0];
denominator_1 = [2 1]
denominator_2 = [1 -2]
denominator_3 = [1 -3]
a = conv(conv(conv(deno_1, deno_1), deno_2), deno_3);
[r_a, p_a, k_a] = residuez(b, a);

r_a
p_a
k_a