[b,a] = generate_transfer_function();

zeros = roots(b);
poles = roots(a);

outfile = fopen('output/zeros_poles.dat', 'w');
fprintf(outfile, 'Zeros are: %s\n', num2str(zeros.'));
fprintf(outfile, 'Poles are: %s\n', num2str(poles.'));
