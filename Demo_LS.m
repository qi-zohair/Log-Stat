%% This code is related to the following paper:
% Z. Al-Ameen and B. Mahmood, “LOG-STAT: An illumination-balancing algorithm for archaeological images captured in non-ideal lighting,” 
% Jordanian Journal of Computers and Information Technology, vol. 12, no. 1, pp. 1–17, 2026. DOI: 10.5455/jjcit.71-1760781146

clear all; clc; close all;

x=im2double(imread('3.jpg'));

tic;  Y = 6;  HSV = rgb2hsv(x);
HSV(:,:,3) = Log_Stat(HSV(:,:,3),Y); toc;
res = hsv2rgb(HSV);

figure; imshow([x,res]);title('SSR-Dev')
% imwrite(res,'Log-Stat_Y6.jpg')