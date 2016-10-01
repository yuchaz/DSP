figure
h = [1 1 1 -1 1]
x = [1 -1 1 1 1]
h_start_point = 0
x_start_point = 0

y = conv(h,x)
y_start_point = min([x_start_point,h_start_point])
y_end_point = y_start_point + size(y,2) - 1
y_axis = y_start_point:y_end_point

stem(y_axis, y)
