% ��������
clc;clear;close all;

a=-8*pi : 0.0001*pi : 8*pi;

% ��ͼ����
P_draw=(1-sinc(a)).^2;
% ��P�����߷ֲ�
P=sinc(a).^2;

subplot(212);
plot(a,P);
title('���������ǿ�ֲ�');
lgray=zeros(256,3);
grid on;

for i=0:255
    lgray(i+1,:)=(255-i)/255;
end

subplot(211);
imagesc(P_draw);
title('��������');
colormap(lgray);
grid on;
