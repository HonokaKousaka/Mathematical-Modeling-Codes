% ����ͼ
%% ���Ƚ�ͼת��ΪȨ���ڽӾ���D
n = 5;  %һ������ڵ�
D = ones(n) ./ zeros(n);  % ȫ��Ԫ�س�ʼ��ΪInf
for i = 1:n
    D(i,i) = 0;  % ���Խ���Ԫ��Ϊ0
end
D(1,2) = 3;
D(1,3) = 8;
D(1,5) = -4;
D(2,5) = 7;
D(2,4) = 1;
D(3,2) = 4;
D(4,3) = -5;
D(5,4) = 6;
D(4,1) = 2;

%% ����Floyd_algorithm�������
[dist,path] = Floyd_algorithm(D)

print_path(path,dist,1,5)
print_path(path,dist,1,4)
print_path(path,dist,3,1)

clc
disp('�������Ǵ�ӡ��������֮�����̾��룺')
print_all_path(D)