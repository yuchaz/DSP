[x,~] = audioread('Wagner.wav');
y = srconvert(x.');
audiowrite('converted.wav',y, 24000);
%subplot(2,1,1);
%plot(x);
%subplot(2,1,2);
%plot(y);
