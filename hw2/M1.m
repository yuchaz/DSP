b = [1 0 0 0 0];
a_1 = [1 1/2];
a_2 = [1 -2];
a_3 = [1 -3];
a = conv(conv(conv(a_1, a_1), a_2), a_3);
[r_a, p_a, k_a] = residuez(b, a);

A = conv(conv(a_1,a_1),a_2);
B = conv(conv(a_1,a_1),a_3);
C = conv(conv(a_1,a_2),a_3);
D = conv(a_2,a_3);

M = [A;B;C;[D 0]];
M_transpose = transpose(M)

Mi = inv(M_transpose)

output = Mi * [1;0;0;0]
r_a

