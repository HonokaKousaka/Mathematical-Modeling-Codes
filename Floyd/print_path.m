function [] = print_path(path,dist,i,j)
%% �ú����������Ǵ�ӡ��i��j���������·��
% ���룺
%        path��ʹ��floyd�㷨�������·������
%        dist��ʹ��floyd�㷨���������̾������
%        i����ʼ�ڵ�ı��
%        j���յ�ڵ�ı��
% �������

if i == j
    warning('�����յ���ͬ���������������')  % ����Ļ����ʾ������Ϣ
    return;  % �������������䣬ֱ���˳�����
end
if path(i,j) == j   % ���path(i,j) = j���������ֿ��ܣ�
% ��1�����dist(i,j) Ϊ Inf , ��˵����i��jû��·�����Ե���
    if dist(i,j) == Inf
        disp(['��',num2str(i),'��',num2str(j),'û��·�����Ե���'])
% ��2�����dist(i,j) ��Ϊ Inf , ��˵����i��j��ֱ�ӵ����Ϊ���·��
    else
        disp(['��',num2str(i),'��',num2str(j),'�����·��Ϊ'])
        disp([num2str(i),' ---> ',num2str(j)])
        disp(['��̾���Ϊ',num2str(dist(i,j))])
    end
else  % ���path(i,j) ~= j����˵���м侭���������ڵ㣺
    k = path(i,j);
    result = [num2str(i),' ---> '];  % ��ʼ��Ҫ��ӡ������ַ���
    while k ~= j  % ֻҪk������j, ��һֱѭ����ȥ
        result = [result , num2str(k) , ' ---> ' ];  % i���ߵ�k����ڵ㴦
        k = path(k,j);
    end
    result = [result , num2str(k)];
    disp(['��',num2str(i),'��',num2str(j),'�����·��Ϊ'])
    disp(result)
    disp(['��̾���Ϊ',num2str(dist(i,j))])
end

end