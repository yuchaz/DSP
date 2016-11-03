[b,a] = generate_transfer_function();

[h,w_fz] = freqz(b,a,10000,'whole');
[gpd,w_gpd] = grpdelay(b,a, 10000, 'whole');
subplot(3,1,1);
plot(w_fz/pi, 20*log10(abs(h)));
axis([0 2 -100 20]);

subplot(3,1,2);
plot(w_fz/pi, angle(h));

subplot(3,1,3);
plot(w_gpd/pi,gpd);
