% 单缝衍射
clc;clear;close all;

a=-8*pi : 0.0001*pi : 8*pi;

% 绘图参数
P_draw=(1-sinc(a)).^2;
% 求P的曲线分布
P=sinc(a).^2;

subplot(212);
plot(a,P);
title('单缝衍射光强分布');
lgray=zeros(256,3);
grid on;

for i=0:255
    lgray(i+1,:)=(255-i)/255;
end

subplot(211);
imagesc(P_draw);
title('单缝衍射');
colormap(lgray);
grid on;
