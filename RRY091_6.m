% RRY091 Galaxies and observational cosmology -- Cosmic Microwave Background Spectrum
% Weihua 2014-03-27 
% Take care of the expressions for different SI unit, aka,
% W·sr^-1·m^-2·Hz^-1 for B_nu(T) and W·sr^-1·m^-3 for B_lambda(T). 

close all;clear all;clc; 

kB = 1.3806e-23;                                     % J/K  Boltzmann's constant
h = 6.6261e-34;                                      % Js Planck constant
c = 299792458;                                       % m/s   
T = 2.73;
% Use Wien's Displacement law to center the curve, b = 2.8977e-3mk, T = 2.73K, thus lambda_max = 1.0615e-3 m
lambda_max = 2.8977e-3/T;
lambda = lambda_max/10:1e-5:lambda_max*1e3;          % wavelength from about 0.0001m to 1m.
nu = c./lambda;
% I = (2*h*c*c)./(lambda.^5 .* (exp(h*c./(lambda*kB*T)) - 1)); Not this one!
Const1 = 2*h/c/c;
Const2 = h/kB/T;
I = (Const1*nu.^3) ./ (exp(Const2.*nu)-1);
loglog(100*lambda,I,'LineWidth',2);  
ylim([1e-22 1e-17]);
xlabel('\bf Wavelength [cm]');
ylabel('\bf I_{\nu} [Js^{-1}m^{-2}sr^{-1}Hz^{-1}]'); % Note this unit corresponds to B_nu(T) 
title('Spectrum of the CMB');

