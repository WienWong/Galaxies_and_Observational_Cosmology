% RRY091 Ex5 Anonymous function, fplot plots a function between specified limits. The function must be of the form y = f(x)
% Weihua 2014-03-22

close all;clear all;clc;
a = 1;
b = 1;
c = 1;
d = 1;
e = 2;
f = 1; 
C = @(t)a*b*c*(exp(-d*t)-exp(a*t))/((a-e)*f);
fplot(C,[0 10]);
