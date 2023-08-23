%% ��������
clear;clc

syms x
y = x^2
int(y,x)
% x^3/3 ע�⣬Matlab����ʱ��������Ǽ��ϳ���C

syms x
y = 1/x
int(y,x)
% log(x)  ע�⣬Matlab����1/x��ʽ�Ĳ�������ʱ��������Ǽ��Ͼ���ֵ~

syms x
y = x^2 / (1+x^2)
int(y,x)
% x - atan(x)

syms x
y = 1/(exp(x)+1)
int(y,x)
% x - log(exp(x) + 1)

syms x a
y = 1/sqrt(x^2-a^2)
int(y,x)
% log(x + (x^2 - a^2)^(1/2))

%% ������
syms x
y = sin(x)
int(y,x,0,pi/2) 
% 1

syms x a b
y = exp(x)
int(y,x,a,b)
% exp(b) - exp(a)

syms x
y = (sin(x))^2 / x^2
b=int(y,x,0,+inf)
% pi/2

% ע�⣬�������еĺ�������������int������������Ľ�������磺
syms x
y = 1 / exp(x) * log(x+2*x^2+sin(x))
int(y,x,0,4)
% int(exp(-x)*log(x + sin(x) + 2*x^2), x, 0, 4)

% ���ǿ��Լ�����ֵ���֣���ֵ���ֿ������󶨻��ֵĽ���ֵ������ֵ�����У���ֵ�����Ǽ��㶨������ֵ�ķ��������ۡ�
% ����ѧ�����У����������Ķ����ֵļ��㲻���ǿ��еģ���ඨ���ֲ�������֪�Ļ��ֹ�ʽ�õ���ȷֵ��
y = @(x) 1 ./ exp(x) .* log(x+2.*x.^2+sin(x))  % ע�⣬д�ɺ������ʱ��Ҫ�õ�˻��ߵ��
integral(y,0,4)

xx = 0:0.1:4;
yy = 1 ./ exp(xx) .* log(xx+2*xx.^2+sin(xx));
plot(xx,yy,'-')