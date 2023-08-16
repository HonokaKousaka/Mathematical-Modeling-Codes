%% Matlab������������ͼ��  

% fimplicit3(f) ��Ĭ������ [-5 5]�ϻ��� f(x,y,z) = 0 �������ά��������
f = @(x,y,z) x.^2 + y.^2 - z.^2;  % ����������������һ��������ܹ���������Ҫע�⣬Ҫ�õ������
fimplicit3(f)
xlabel('x��');  ylabel('y��');  zlabel('z��');  % ����������ı�ǩ
interval = [-5 5 -5 5 0 5];   % ָ����Χ
fimplicit3(f,interval)
fimplicit3(f,interval,'EdgeColor', 'none', 'FaceAlpha',0.5)  % ȥ����Ե��ɫ������͸����


% fimplicit3(f,interval) Ϊ x��y �� z ָ����ͼ���䡣
f = @(x,y,z) (x.^2+(9/4)*y.^2+z.^2-1).^3-x.^2.*z.^3-(9/80)*y.^2.*z.^3;
fimplicit3(f,[-1.5,1.5,-1.5,1.5,-1.5,1.5],'EdgeColor', 'none', 'FaceAlpha',0.5);
axis vis3d % ������Ļ�߿�ȣ�ʹ��һ����ά�������ת����ı�������Ŀ̶���ʾ
% �ú�����2016b�汾���Ƴ���֮ǰû�У��ϰ汾Matlab�ɲο��� https://www.ilovematlab.cn/thread-260987-1-1.html
