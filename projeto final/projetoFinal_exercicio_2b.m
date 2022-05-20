% projeto final ex 2 b
% Alexandre Costa a22007578 Joao Eleutério a22007237
% b =7=y(-2)

clear all;
pkg load signal

% y(n)-5y(n-1)+5y(n-2)=x(n)-2x(n-1) 

%x(n)=(1/2)^n*u(n)

%y(-1) =8

a=[1,-5,4]

b=[1,-2];

n=0:1:10

x = (1/2).^n

zi=filtic(b,a,[0,7]);

[y,zf]=filter(b,a,x,zi)
stem(n,y)


yAnalitico=((-3/7).*(1/2).^n)+10+((-768/21).*(4).^n)

figure
stem  (n,yAnalitico)



