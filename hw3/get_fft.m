function out = get_fft( in )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
X = fft(in);
X_db = mag2db(abs(X));
X_angle = angle(X);
subplot(2,1,1)
plot(linspace(0,2,size(X_db,2)), X_db);
subplot(2,1,2)
plot(linspace(0,2,size(X_angle,2)), X_angle);
for i=1:size(X_db,2)
    if X_db(1,i) < -3 && i/size(X_db,2) > 0.2
        break
    end
end

out = 2*i/size(X_db,2);
end

