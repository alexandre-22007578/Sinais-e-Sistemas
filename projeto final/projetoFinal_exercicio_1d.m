% projeto final ex 1 d
% Alexandre Costa a22007578 Joao Eleutério a22007237

clear all;

% x(n)=(1/4)^ n u(n)
% h(n)=(1/5)^ n u(n)
%y(n)-(1/5)y(n-1)=x(n);


n=0:1:5
x = (1/4).^n
stem(n,x);

% grafico de h

h=(1/5).^n
figure 2; 
stem(n,h);

% grafico de y
ny=n(1)+n(1):1:n(end)+n(end)
y=conv(x,h)
figure 3;
stem (ny,y)

m=0:1:10

yAnalitico=((1/5).^m).*((1-(5/4).^(m+1))./(1-(5/4)))


figure
stem  (m,yAnalitico)



