% problem 10.2
% Exercise 10.2 Following an analogous derivation as that in Example 10.4, given one inductor L2 of a precisely
% known inductance, write a code Wheatstone_Inductors.m that quantifies how a Wheatstone bridge may be
% used to measure the inductance of an unknown inductor L5.
%% initial clearing
clc;
clear;
clear all;

syms L2 L5 s V0; R1 =1e3 ; R4 =1e3 ; R3 =1e5 ;

%create matrices
A=[1 -1 -1 0 0 0 0 0; 0 1 0 -1 -1 0 0 0; 0 0 1 1 0 -1 0 0; 0 R1 0 0 0 0 1 0; ...
   0 0 1 0 0 0 0 L2*s; 0 0 0 R3 0 0 -1 1; 0 0 0 0 R4 0 -1 0; 0 0 0 0 0 1 0 -L5*s];
b=[0; 0; 0; V0; L2*s*V0; 0; 0; 0]; 

x=A\b

%% this code is based off of Dr. Bewley's code for computing the currents 
% and intermediate nodal voltages of a Wheatstone Bridge with two capacitors.
% syms C2 C5 s V0; R1=1e3; R4=1e3; R3=1e5;
% A=[1 -1 -1 0 0 0 0 0; 0 1 0 -1 -1 0 0 0; 0 0 1 1 0 -1 0 0; 0 R1 0 0 0 0 1 0; ...
%    0 0 1 0 0 0 0 C2*s; 0 0 0 R3 0 0 -1 1; 0 0 0 0 R4 0 -1 0; 0 0 0 0 0 1 0 -C5*s];
% b=[0; 0; 0; V0; C2*s*V0; 0; 0; 0]; x=A\b