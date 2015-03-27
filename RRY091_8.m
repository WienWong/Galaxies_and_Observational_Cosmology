% RRY091 Galaxies and observational cosmology
% 'Angular-diameter distance versus redshift'
% Weihua Wang 2014-04-02

close all;clear all;clc;

% Einstein-de Sitter Univ.(No dark energy) 
Ho  = 72;                      % Hubble const km s^-1 Mpc^-1
HO  = 0.7/9.778;               % Gyr^-1
Mpc = 3.085678e22;             % 1 Mpc equals 3.085678e22 m
GYr = 365.25*24*60*60*1e9;     % 1Gyr equals 365.25*24*60*60*1e9 seconds

t   = 0:1:40;
At  = ((3/2)*HO.*t).^(2/3); 
plot(t,At,'m','LineWidth',2);
title('\bf EdS Universe, scale factor a(t) versus time ');
xlabel('\bf t Gyr');ylabel('\bf a(t)');
legend('\Omega_0 = 1');

% The analytical solutions of the Friedmann equation for the Open universes 
% is given. Expansion will continue for all time. Universe ends in the 'Big Chill'.

Omega0 = [0.9 0.8 0.3 0.1];  % Sth wrong??
ita    = 0:0.01:1;
A_open = zeros(length(Omega0),length(ita));
t_open = A_open;
for k = 1:length(Omega0)
    A_open(k,:) = 0.5*Omega0(k).*(cosh(ita) - 1)/(1-Omega0(k));
    t_open(k,:) = (0.5*Omega0(k)/HO/(1-Omega0(k)).^(3/2)) .*(sinh(ita) - ita);
end
figure;
plot(t_open(1,:),A_open(1,:),t_open(2,:),A_open(2,:),...
     t_open(3,:),A_open(3,:),t_open(4,:),A_open(4,:),'LineWidth',2);
xlabel('\bf t Gyr');ylabel('\bf a(t)');
xlim([0,0.14]);ylim([0,0.1]);
title('\bf a(t) versus t for the open universes');
legend('\Omega_0=0.9','\Omega_0=0.8','\Omega_0=0.3','\Omega_0=0.1',0);

% The analytical solutions of the Friedmann equation for the Closed Universes 
% is given. These are closed universes with a finite time. At some time in
% the future expansion will cease and all matter will collapse in on itself
% called the 'Big Crunch'. 

Omega0  = [1.1 1.2 1.5 2.0]; 
theta   = 0:pi/100:2*pi;
A_close = zeros(length(Omega0),length(theta));
t_close = A_close;
for k = 1:length(Omega0)
    A_close(k,:) = 0.5*Omega0(k).*(1-cos(theta))./(Omega0(k) - 1);
    t_close(k,:) = Omega0(k)*(theta-sin(theta))./(2*HO*(Omega0(k)-1).^(3/2));
end
figure;
plot(t_close(1,:),A_close(1,:),t_close(2,:),A_close(2,:),...
    t_close(3,:),A_close(3,:),t_close(4,:),A_close(4,:),'LineWidth',2);
legend('\Omega_0=1.1','\Omega_0=1.2','\Omega_0=1.5','\Omega_0=2.0',0);
xlabel('\bf t Gyr');ylabel('\bf a(t)');
title('\bf a(t) versus t for the closed universes');

