close all;clear all;clc;
t = 0:0.1:20;
Ac=5;fc=500;fm=20;am=5;kf=100;
mt = @(tao)(cos(2*pi*fm*tao));
sfm = zeros(size(t));
for k=1:length(t)
    sfm(k) = am*cos(2*pi*t(k) + 2*pi*kf*integral(mt,0,t(k)));
end
plot(t,sfm);title('FM');
