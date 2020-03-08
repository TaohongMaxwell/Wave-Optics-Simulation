% ∑Ú¿…∫Ã∑—‘≤ø◊—‹…‰
clc;clear;close all;

N=1;
tz=linspace(0,0.01*pi,1000*pi);
Pq=[];
K=6; % øÿ÷∆≤Œ ˝
[x,y]=meshgrid(linspace(0,N+1,800));
z=x+i*y;
U=0;

for m=1:N
    for n=1:N
        zk=abs(z-[m+n*i])*K;
        U=U+0.1*besselj(4,zk)./zk;
        r= 1-U;
        A=1- abs(U).^2;
    end
end

subplot(111);
Ip=imshow(A,[]);
title('∑Ú¿≈∫Ã∑——‹…‰');