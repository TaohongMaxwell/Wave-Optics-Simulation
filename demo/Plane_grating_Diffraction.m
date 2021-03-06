% 一维光栅衍射
clc;clear;close all;

d=-4*pi : 0.0001*pi : 4*pi;
b=d./15;
N=4;

% 绘图参数
P_draw=1-(sinc(b).*sin(N*d)./sin(d)).^2;
% 求P的曲线分布
P=(sinc(b).*sin(4*d)./sin(d)).^2;

subplot(212);
plot(d,P);
title('平面光栅衍射光强分布');
lgray=zeros(100,3);
grid on;

for i=0:255
    lgray(i+1,:)=(255-i)/255;
end

subplot(211);
imagesc(P_draw);
title('平面光栅衍射');
colormap(lgray);
grid on;
