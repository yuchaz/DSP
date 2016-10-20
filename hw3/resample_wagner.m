[x,~] = audioread('Wagner.wav');
y = srconvert(x.');
audiowrite('converted.wav',y, 24000);
