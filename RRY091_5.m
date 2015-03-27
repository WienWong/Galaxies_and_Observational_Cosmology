% Compare 'quad' with 'integral'
close all;clear all;clc;

t = linspace(0,10,100); 
f = @(t) sin(t)./(t + eps);  % Avoid of zero by adding eps 
F = t;
n = length(t);
for i = 1:n
    F(i) = quad(f,0,t(i));
end

subplot(211);
plot(t,F,'LineWidth',2);
grid on;
xlabel('x');ylabel('y');
title('Integral of sinx/x from 0 to 10');

hold on;

t = linspace(0,10,100); 
f = @(t) sin(t)./(t + eps); 
F = zeros(size(t));
n = length(t);
for i = 1:n
    F(i) = integral(f,0,t(i));
end

subplot(212);
plot(t,F,'LineWidth',2);
grid on;
xlabel('x');ylabel('y');
title('Integral of sinx/x from 0 to 10');
