[x,~] = audioread('Wagner.wav');
%disp(x.');
y = srconvert(x.');
audiowrite('converted.wav',y, 24000);
x;
y;