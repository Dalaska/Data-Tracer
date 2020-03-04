% trace image from point
src = imread('to_trace.png');

imshow(src)

hold on;

p=100; q=100; r=100; 


[Px,Py] = ginput(p); plot(Px,Py,'o')

[Qx,Qy] = ginput(q); plot(Qx,Qy,'x')

[Rx,Ry] = ginput(r); plot(Rx,Ry,'*')


save('trace_data') 
%%========== extra =======

load('trace_data') 
figure(1)
%imshow(src)
hold on
Px(end) = max(Qx);
plot(Px-min(Px),-(Py-Ry));
plot(Qx-min(Qx),-(Qy-Ry));

x = Px-min(Px);
v = -(Py-Ry);
xq = linspace(0,max(x),20);
vq1 = interp1(x,v,xq);

x2 = Qx-min(Qx);
v2 = -(Qy-Ry);
xq2 = linspace(0,max(x2),20);
vq2 = interp1(x2,v2,xq2);

figure(2)
hold on
plot(xq,vq1);
plot(xq2,vq2);

ratio = vq1./vq2;
yq = smooth(ratio)
figure(3)
hold on
plot(xq,ratio);
plot(xq,yq)

figure(4)
plot(xq*4/601,yq,'-ok')
axis([0 4 0 3.5])
