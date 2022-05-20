% projeto final ex 1 g
% Alexandre Costa a22007578 Joao Eleutério a22007237
% a =8=y(-1)

clear all;
pkg load signal

%y(n)-(1/5)y(n-1)=x(n);
%x(n)=(1/4)^n*u(n)
%y(-1) =8

a=[1,-0.2]
b=1;
n=0:1:10
x = (1/4).^n

% zi=filtic(b,a,[y(-1),y(-2)]...)

zi=filtic(b,a,8);

y=filter(b,a,x,zi)

[h,t]=impz(b,a,n(end));

y_conv=conv(x,h)
y_conv(1:11)

y_filter=filter(b,a,x)
stem(n,y)

yAnalitico=(5.*(1/4).^n)+((-12/5).*(1/5).^n)

figure
stem  (n,yAnalitico)