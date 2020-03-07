% extract data from image trace image from point

% load image 
src = imread('car_sales.png');

imshow(src)

hold on;

p=100; q=100;

% get points
[Px,Py] = ginput(p); plot(Px,Py,'o')

% get origin
[Qx,Qy] = ginput(q); plot(Qx,Qy,'x')


% save to file
%save('trace_data') 


