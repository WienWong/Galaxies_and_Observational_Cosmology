% RRY091 Ex3 anonymous function, integration with varying integral limit
% Weihua 2014-03-22

close all;clear all;clc;

t = 0.01:0.001:1;
fun = @(x)(x.^5.307.*(1-x).^8.114);
r = zeros(size(t));
for n = 1:length(t)
    r(n) = 1-integral(fun,0,t(n));
    %r(n) = 1-integral(@(x)(x.^5.307.*(1-x).^8.114),0,t(n));
end
plot(t,r,'LineWidth',2);
