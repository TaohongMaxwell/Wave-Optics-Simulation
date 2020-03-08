% 双缝干涉
clc;clear;close all;

a=-8*pi : 0.0001*pi : 8*pi;
%通过改变 PI 的倍数而改变条纹数

% 绘图参数
P_draw=1-sin(2*a).^2./sin(a).^2;
% 求P的曲线分布
P=sin(2*a).^2./sin(a).^2;

subplot(212);
plot(a,P);
title('双缝干涉光强分布');
lgray=zeros(256,3);
grid on;

for i=0:255
    lgray(i+1,:)=(255-i)/255;
end

subplot(211);
imagesc(P_draw);
title('双缝干涉');
colormap(lgray);
grid on;
