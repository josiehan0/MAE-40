% problem 9.12
% Exercise 9.1 Assuming d = 0.1, for n = 1, 2, 4, and 8, plot the roots of the numerator (with the symbol ’o’,
% referred to as zeros), and the roots of the denominator (with the symbol ’x’, referred to as poles), of the n’th
% order Padé approximation, Fn(s), of the delay function F(s) = e
% −d s. Plot the zeros and poles of Fn(s) on a
% separate plot for each value of n. Discuss.
%% initial clearing
clc;
clear;
clear all;

% initializing d
d = 0.1;
n = [1 2 4 8];
for i = 1:length(n)
    s = tf('s');
    sys = exp(-d*s);
    sysx = pade(sys, n(i));
    figure(i);
    hold on;
    [num, den] = tfdata(sysx, 'v');
    pzmap(sysx);
    hold off;
end