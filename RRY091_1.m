% RRY091 Ex1 anonymous function, integration with varying integral limit
% Weihua 2014-03-22

close all;clear all;clc;
K = 0.1242;
t = 60:60:6000;

f = inline(' exp(-55748.7/0.1242./x) ','x');
y = zeros(size(t));                % pre-location
for n = 1:length(t)
y(n) = -16.909 + 11089/K/t(n) + 101417.4*quad(f,0,t(n)); 
end
subplot(2,1,1);
plot(t,y,'.-');
hold on;

%%%%%

y = @(x)(exp(-55748.7/0.1242./x)); % anonymous function
g = zeros(size(t));
for n = 1:length(t)
g(n) = -16.909 + 11089/K./t(n) + 101417.4*integral(y,0,t(n)); 
end
subplot(2,1,2);
plot(t,g,'.-r'); 
