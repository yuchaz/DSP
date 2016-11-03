[b,a] = generate_transfer_function();

[r,p,k] = residuez(b,a);

outfile = fopen('output/r_p_k.dat', 'w');
fprintf(outfile, 'r =  [%s]\n', num2str(r.'));
fprintf(outfile, 'p =  [%s]\n', num2str(p.'));
fprintf(outfile, 'k =  [%s]\n', num2str(k.'));
