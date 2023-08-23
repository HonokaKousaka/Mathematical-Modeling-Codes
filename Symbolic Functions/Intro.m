%% ���ű����Ĵ����ͼ�����
% ����ο�����Ҫ��ѧ���Ĺ�����ʦ��Matlab2016��ֵ�����������㷨��
clear;clc

% �򵥷��ű����Ĵ���
syms x  % �۲칤������ sym��symbolic����д
syms a b c

% ���ŷ��̵Ĵ��������ַ���
syms a x
y = a*x+x^2
% y = str2sym('a*x+x^2')  %Matlab 2017b �汾���Ƴ�

% ���ž���
syms alpha
M = [cos(alpha)  -sin(alpha);
       sin(alpha)  cos(alpha)]

%% ������
syms a b c d e
y = a + b
% a + b
x = c - d
% c - d
y1 = x*y
% (a + b)*(c - d)
y2 = y1/y
% c - d
y3 = y1^3
% (a + b)^3*(c - d)^3
y4 = sqrt(y3)   
% ((a + b)^3*(c - d)^3)^(1/2)
y5 = exp(y4)
% exp(((a + b)^3*(c - d)^3)^(1/2))


%% ���ű���ʽ������
clear;clc

% ����
syms a
y=(cot(a/2)-tan(a/2))*(1+tan(a)*tan(a/2))
simplify(y)
% 2/sin(a)

%% ��ʽ�ֽ�
factor(12) % �Գ���������ʽ�ֽ� 
%      2     2     3
syms m n x
y = -24*m^2*x-16*n^2*x
factor(y)
% [ -8, x, 3*m^2 + 2*n^2]
y1=m^3-n^3
factor(y1)
% [ m - n, m^2 + m*n + n^2]

%% ����ʽչ��
syms a x
y = a*(x^2-a)^2+(x-2)
expand(y)
% a^3 - 2*a^2*x^2 + a*x^4 + x - 2

%% �ϲ�
syms x y
z = (x+y)^2*y+5*y*x-2*x^3
% expand(z)   - 2*x^3 + x^2*y + 2*x*y^2 + 5*x*y + y^3
collect(z,x)
% y*x^2 - 2*x^3 + (2*y^2 + 5*y)*x + y^3
collect(z,y)
% y^3 + 2*x*y^2 + (x^2 + 5*x)*y - 2*x^3

%% ����������ĸ
% [z1,z2] = numden(2.5)  % �ᱨ������Ϊnumden�����������������ֵ��ֻ���Ƿ��ű���
% ans = sym(2.5);  % sym�������Խ���ֵ2.5ת��Ϊ����
[z1,z2] = numden(sym(2.5)) % �Գ�������������ĸ
% z1 = 5
% z2 = 2
syms x y
z = 1/x*y+x/(x^2-2*y)
[z1,z2] = numden(z)  %z1���ӣ�z2��ĸ
% z1 = - x^2*y - x^2 + 2*y^2
% z2 = x*(- x^2 + 2*y)

%% �ý����ʾ�ĸ�����Ȼ
syms x y
M = (1/x*y+x/(x^2-2*y)-x^2/(3+y)^2)^2;
expand(M)  
% y^2/x^2 + x^4/(y^4 + 12*y^3 + 54*y^2 + 108*y + 81) + (2*x^3)/(- x^2*y^2 - 6*x^2*y - 9*x^2 + 2*y^3 + 12*y^2 + 18*y) - (2*y)/(- x^2 + 2*y) + x^2/(x^4 - 4*x^2*y + 4*y^2) - (2*x*y)/(y^2 + 6*y + 9)
% mupad % �ù������Ѿ����Ƴ����½�ʵʱ�ű��������㹫ʽ��ʾ����