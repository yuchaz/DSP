function lpf = generate_lpf(size)
%generate_lpf() Summary of this function goes here
%  This function is used to generate sin(omega(n-M))/pi(n-M)
%  With only 29 points.
M = (1+size)/2;
omega = 0.33*pi;

lpf = zeros(1,size);
disp(lpf);
for i=1:size
    if i==M
        lpf(1,i) = 0;
    else
        lpf(1,i) = lpf(1,i) + sin(omega*(i-M))/(pi*(i-M));
    end
end


