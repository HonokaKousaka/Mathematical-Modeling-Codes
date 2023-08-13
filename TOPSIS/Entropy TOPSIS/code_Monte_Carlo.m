%% ���ؿ���ģ�⣺ָ��ı�׼�����Ϣ�سɷ���
n = 30;  % ��������
N = 100; % ����Ĵ���
result = zeros(N,2);  % ��ʼ������������Ϣ�غͱ�׼��ľ��󣬺������ʾ��Ϣ�أ��������ʾ��׼��
for i = 1:N
    x = rand(n,1);  % �������n��λ������[0,1]��������� (�������������Ƶ���Ľ�������)
    p = x / sum(x);
    e = -sum(p .* mylog(p)) / log(n); % ������Ϣ��
    sd = std(x);  % �����׼��(������ͳ������Ƶ���彲������)
    result(i,1) = e;
    result(i,2) = sd;
end

plot(result(:,1),result(:,2),'o')   %(��ͼ����Ƶ������������)
xlabel('��Ϣ��')
ylabel('��׼��')
[r,p] = corrcoef(result(:,1),result(:,2)) % �������ϵ���Ͷ�Ӧ��pֵ(���ϵ������Ƶ���彲������)