%% surf���������Ƴ���ĳһ����������������ͼ
% surf������mesh�����ĵĵ��ø�ʽ������ͬ
% ���ߵ����� mesh�����ɫ���ߣ�surf�����ɫ����

%% ����1�ĶԱ�
[x,y] = meshgrid(linspace(0,5,11));
% [x,y] = meshgrid([0:0.5:5]);  ����ֱ��д��[x,y] = meshgrid(0:0.5:5);
z = x.^2 - y.^2;
subplot(1,2,1)  % subplot(m,n,index) m�����м���ͼ��n�����м���ͼ
mesh(x,y,z)
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('mesh(x,y,z)')

subplot(1,2,2)
surf(x,y,z)  
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
% axis([0,5,0,5,-inf,+inf])  % ����������̶ȷ�Χ
title('surf(x,y,z)')

%% ����2�ĶԱ�
[x,y] = meshgrid(-5:0.5:5);  % ���������������������
tem = sqrt(x.^2+y.^2)+1e-12;   
z = sin(tem)./tem;  % �������tem������ôz�����м��һ��ֵ 0/0 = NaN
subplot(1,2,1)
mesh(x,y,z)
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('mesh(x,y,z)')

subplot(1,2,2)
surf(x,y,z)  % (X(j), Y(i), Z(i,j))���߿������ߵĽ���
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('surf(x,y,z)')

%% surfc����������surf����ͼ���⣬����xyƽ���ϻ�������ĵȸ���
surfc(x,y,z)
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ

%% surfl�����������˵ƹ�Ч��,��������Ȼ��
surfl(x,y,z)
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ

%% ����ɫ��ģʽ
% shading ����������ɫ��Ч���ģ����������֣�
% shading faceted��Ĭ�ϵ�ģʽ 
% shading flat ��faceted�Ļ�����ȥ��ͼ�ϵ�������
% shading interp ��flat�Ļ����Ͻ���ɫ�ʵĲ�ֵ����ʹɫ��ƽ������
subplot(1,3,1)
surf(x,y,z)  % (X(j), Y(i), Z(i,j))���߿������ߵĽ���
shading faceted % Ĭ�ϵ�ɫ��ģʽ
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('shading faceted')

subplot(1,3,2)
surf(x,y,z)  % (X(j), Y(i), Z(i,j))���߿������ߵĽ���
shading flat % �������⻬һ��
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('shading flat')

subplot(1,3,3)
surf(x,y,z)  % (X(j), Y(i), Z(i,j))���߿������ߵĽ���
shading interp % ��������⻬
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
title('shading interp')