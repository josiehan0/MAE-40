% problem 10.5a
% Exercise 10.5 (a) Compute the transfer function Vout(s)/Vin(s) of the passive circuit shown in Figure 10.30a,
% making the same two assumptions as in Example 10.6. Assuming LC = 1 and RC = 0.5, plot its Bode plot.
% What is the cutoff frequency and damping of this filter?
%% initial clearing
clc;
clear;
clear all;

% given initializations
LC = 1;
RC = 0.5;

% transfer function plotting
transferFunction = tf([1 0 1], [1 RC/LC 1/LC]);
bode(transferFunction);

% cutoff frequency = 1/(2*pi*R*C) and RC = 0.5
cutoffFrequency = 1/(2*pi*RC);

% damping ratio = RC^(1/2)/2L^(1/2)
dampingRatio = RC/2*(LC)^(1/2);