% problem 10.1
% Exercise 10.1 Following an analogous derivation as that in Example 10.3, replace the six resistors in Figure
% 10.4a-b with six capacitors {C1, C2, C3, Ca, Cb, Cc}, and write a code Wye_Delta_Capacitors.m that quanti-
% -fies {Ca, Cb, Cc} in terms of {C1, C2, C3}, and vice versa, so that the two circuits are equivalent. Then, replacing
% the five resistors in Figure 10.3d with five capacitors {C1, C2, C3, C4, C5} and applying this result, compute the
% equivalent capacitance C of this network. Note: Given the simple path to solution in this problem using 
% %symbolic manipulation, the engineering student is encouraged to to crank through such tedious algebraic manipulations
% symbolically whenever possible from now on!
%% initial clearing
clc;
clear;
clear all;

syms C1 C2 C3 C4 C5 Ca Cb Cc;
eqn1='1/(1/Ca+1/Cb)==C1+1/(1/C2+1/C3)';
eqn2='1/(1/Ca+1/Cc)==C2+1/(1/C1+1/C3)';
eqn3='1/(1/Cb+1/Cc)==C3+1/(1/C1+1/C2)';

A=solve(str2sym(eqn1),str2sym(eqn2),str2sym(eqn3),Ca,Cb,Cc);
B=solve(str2sym(eqn1),str2sym(eqn2),str2sym(eqn3),C1,C2,C3);
Ca=simplify(A.Ca),Cb=simplify(A.Cb),Cc=simplify(A.Cc)
simplify(1/(1/Ca) + 1/(1/Cb+1/C4) + 1/(1/Cc+1/C5));
C1=simplify(B.C1),C2=simplify(B.C2),C3=simplify(B.C3)

%% this code is based off of Dr. Bewley's code for resistors in delta wye transformations
% syms R1 R2 R3 R4 R5 Ra Rb Rc
% eqn1='Ra+Rb==1/(1/R1+1/(R2+R3))'
% eqn2='Ra+Rc==1/(1/R2+1/(R1+R3))'
% eqn3='Rb+Rc==1/(1/R3+1/(R1+R2))'
% A=solve(str2sym(eqn1),str2sym(eqn2),str2sym(eqn3),Ra,Rb,Rc);
% B=solve(str2sym(eqn1),str2sym(eqn2),str2sym(eqn3),R1,R2,R3);
% Ra=simplify(A.Ra),Rb=simplify(A.Rb),Rc=simplify(A.Rc)
% simplify(Ra + 1/(1/(Rb+R4) + 1/(Rc+R5)))
% R1=simplify(B.R1),R2=simplify(B.R2),R3=simplify(B.R3)