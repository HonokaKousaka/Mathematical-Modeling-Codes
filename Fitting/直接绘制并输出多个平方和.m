clear;clc
load data1
plot(x,y,'o')
% ��x��y����ϱ�ǩ
xlabel('x��ֵ')
ylabel('y��ֵ')
n = size(x,1);
k = (n*sum(x.*y)-sum(x)*sum(y))/(n*sum(x.*x)-sum(x)*sum(x))
b = (sum(x.*x)*sum(y)-sum(x)*sum(x.*y))/(n*sum(x.*x)-sum(x)*sum(x))
hold on % ������֮ǰ��ͼ��������ͼ��
grid on % ��ʾ������

% % ����y=kx+b�ĺ���ͼ�� plot(x,y)
% % ��ͳ�Ļ�����ģ������x��y�����У�����Ҫ����[0,5]�ϵ�ͼ��
% xx = 2.5: 0.1 :7  % ������õ�ԽС��������ͼ��Խ׼ȷ
% yy = k * xx + b  % k��b������ֵ֪
% plot(xx,yy,'-')

% ���������Ļ����÷���
% handle = @(arglist) anonymous_function
% ����handleΪ������������ʱʹ�õ����֡�
% arglistΪ�������������������������һ����Ҳ�����Ƕ�����ö��ŷָ���
% anonymous_functionΪ���������ı��ʽ��
% �ٸ�С����
%  z=@(x,y) x^2+y^2; 
%  z(1,2) 
% % ans =  5
% fplot���������ڻ�������һԪ������ͼ�Ρ�
% fplot(f,xinterval) ����������f��ָ������xinterval��ͼ��xinterval =  [xmin xmax] ��ʾ������ķ�Χ

f=@(x) k*x+b;
fplot(f,[2.5,7]);
legend('��������','��Ϻ���','location','SouthEast')

y_hat = k*x+b; % y�����ֵ
SSR = sum((y_hat-mean(y)).^2)  % �ع�ƽ����
SSE = sum((y_hat-y).^2) % ���ƽ����
SST = sum((y-mean(y)).^2) % ����ƽ����
SST-SSE-SSR   % 5.6843e-14  =   5.6843*10^-14   matlab�����������һ�����
R_2 = SSR / SST