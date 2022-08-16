% problem 9.12
% Sketch (using the rules of §9.4.1.1) and plot (using Matlab) the Bode plots of the following transfer
% functions, and identify whether each is strictly proper, semi proper, or improper:
% a. $G _{1}(s) = \frac{1}/{s + 1}$
% b. $G _{2}(s) = \frac{s-1}{1}$ 
% c. $G_{3}(s) = \frac{s - 1}/{s + 1} = G_{1}(s)G_{2}(s)$
% d. $G_{4}(s) = \frac{s^2 + 101s + 100}{s}$
% e. $G_{5}(s) = \frac{s}{s^2 + s + 1}$ 
% f. $G_{6}(s) = \frac{1}{s^2 + s + 1}$
%% initial clearing
clc;
clear;
clear all;

transferFunctions = [tf([1], [1 1])
    tf([1 -1],[1])
    tf([1 -1],[1 1])
    tf([1 101 100],[1 0])
    tf([1 0],[1 101 100])
    tf([1],[1 1 1])];

for i = 1:length(transferFunctions)
    figure(i), bode(transferFunctions(i));
    hold on;
end
hold off;
