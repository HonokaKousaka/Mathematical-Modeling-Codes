%% contour����: ���Ƶȸ���ͼ

[x,y] = meshgrid(-3:0.1:3);  
% һ�����̫��ʱ�����Լ���������Ȼ������һ�м���д
z =  3*(1-x).^2.*exp(-(x.^2) - (y+1).^2)...  
    -10* (x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2) ...
    - 1/3*exp(-(x+1).^2 - y.^2);  % matlab�����õ�peaks������������Ϊ��ʾʹ��
% edit peaks

%% contour(x,y,z) ��x-yƽ����Ƶȸ���ͼ��Matlab���Զ�ѡ��ȸ��ߵĲ㼶
contour(x,y,z)
xlabel('x��');  ylabel('y��');  % ����������ı�ǩ

%% contour(x,y,z,n) ��x-yƽ����Ƶȸ���ͼ��n��һ����������ôMatlab�Ὣ�ȸ��ߵĲ�������Ϊn���һ��Զ�ѡ������ڵĸ߶ȡ�
contour(x,y,z,5)
contour(x,y,z,5,'LineWidth',2)  % �����ߵĿ��Ϊ2
contour(x,y,z,5,'--')  % ���õȸ���Ϊ����
contour(x,y,z,5,'ShowText','on')  % ��ʾÿһ��ĸ߶�
contour(x,y,z,5,'--','ShowText','on','LineWidth',2)  % �����������ʹ��
colorbar % ��ʾ��ɫ����Ҳ�����ֶ�����
xlabel('x��');  ylabel('y��');  % ����������ı�ǩ

%% contour(x,y,z,levels) ����õ��̶���n���߶ȵĵȸ��ߣ���levels��������ΪnԪ�����������������е�ֵΪ�߶�ֵ��
maxz = max(max(z))
minz = min(min(z))
levels = linspace(minz,maxz,10)  % ����Сֵ�����ֵ���ȷֳ�10����
contour(x,y,z,levels,'ShowText','on','LineWidth',1)  % ��Сֵ�������ֵ������ʾ����������ΪMatlab��������Զ�����
xlabel('x��');  ylabel('y��');  % ����������ı�ǩ

% ˼�����ֻ�뻭���߶�Ϊ3�ĵ��ȸ�����ô��?
contour(x,y,z,[3 3],'ShowText','on') 
xlabel('x��');  ylabel('y��');  % ����������ı�ǩ

%% contourf��������contour�������ƣ�ֻ�����������ĵȸ���ͼ����ɫ���
contourf(x,y,z,levels,'ShowText','on') 
xlabel('x��');  ylabel('y��');  % ����������ı�ǩ

%% contour3������3ά�ȸ���ͼ���ȸ��߲���ͶӰ��x-yƽ��
contour3(x,y,z,levels,'ShowText','on') 
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ