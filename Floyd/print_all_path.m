function [] = print_all_path(D)
%% �ú��������������һ��Ȩ���ڽӾ������������ڵ�֮������·��,����ӡ���еĽ������
% ���룺
%        D��Ȩ���ڽӾ���
% �������

[dist,path] = Floyd_algorithm(D);   % ����֮ǰ��Floyd_algorithm����
n = size(D,1);
if n == 1
    warning('�����������������ϵ�Ȩ���ڽӾ���')   % ����Ļ����ʾ������Ϣ
    return;   % �������������䣬ֱ���˳�����
end

for i = 1:n
    for j = 1:n
        if i ~= j  % ���Ⱥ���~=��ʾ
            print_path(path,dist,i,j);   % ����֮ǰ��print_path����
            disp('-------------------------------------------')
            disp('  ')
        end
    end
end

end