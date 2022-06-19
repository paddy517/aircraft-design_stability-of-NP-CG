clc
clear
close all
%% Basic Geomerty Parameter
Shtail= 78.64; % m^2
WingArea=370; % m^2
MAC= 8.89; %m
DWingtoTail= 26.5;
%% Parameters for Calculation of Neutral Point
Xacw=MAC/4;
Xact=Xacw+DWingtoTail;
aw= 0.2;
at= 0.18;
XacwBar=Xacw/MAC;
XactBar=Xact/MAC;
XnpBar=(aw*XacwBar+at*XactBar*(Shtail/WingArea))/(aw+at*(Shtail/WingArea));
%% Location of CG
SM=10;
XcgBar=-(SM/100)+XnpBar;
Xcg=XcgBar*MAC;
%% Parameters for Calculation of tails install angle
alpha=0;
alpha0w=-5.5;
alpha0t=0;
iw=5;
Cmw=-0.18;
Cmt=-0.18;
it=(-Cmw-Cmt-aw*(alpha-alpha0w+iw)*(XcgBar-XacwBar))/(at*(XcgBar-XactBar)*(Shtail/WingArea))-alpha+alpha0t;