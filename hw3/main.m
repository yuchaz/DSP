output = srconvert([1 zeros(1,3000)]);
%verify(output)
X_db = mag2db(abs(fft(output)));
plot(linspace(0,2,size(X_db,2)), X_db);

for i=1:size(X_db,2)
    if X_db(1,i) < -3 && i/size(X_db,2) > 0.2
        break
    end
end

cutoff_freq = 2*i/size(X_db,2);
