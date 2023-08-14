%% ע�⣺���´�����Ҫ���°汾��matlab�������У������2016�汾������Ŷ��
% ������г����������°��matlab����������

%% Matlab������ͼ
% ��1����Ȩ�أ�ÿ���ߵ�Ȩ��Ĭ��Ϊ1��
% ����graph(s,t)������ s �� t �еĶ�Ӧ�ڵ�֮�䴴���ߣ�������һ��ͼ
% s �� t �����������ͬ��Ԫ��������Щ�ڵ���붼�Ǵ�1��ʼ���������������ַ���Ԫ�����顣
s1 = [1,2,3,4];
t1 = [2,3,1,1];
G1 = graph(s1, t1);
plot(G1)
% ע��Ŷ���������Ǵ�1��ʼ������ţ���Ҫ�Լ���㶨����
s1 = [1,2,3,4];
t1 = [2,3,1,1];
G1 = graph(s1, t1);
plot(G1)

% ע���ַ���Ԫ���������ô����Ű�������Ŷ
s2 = {'College','Cinema','Netbar','Hotel'};
t2 = {'Cinema','Hotel','Hotel','KTV'};
G2 = graph(s2, t2);
plot(G2, 'linewidth', 2)  % �����ߵĿ��
% ������������ڻ�ͼ����ʾ����
set( gca, 'XTick', [], 'YTick', [] );  

% ��2����Ȩ��
% ����graph(s,t,w)������ s �� t �еĶ�Ӧ�ڵ�֮����w��Ȩ�ش����ߣ�������һ��ͼ
s = [1,2,3,4];
t = [2,3,1,1];
w = [3,8,9,2];
G = graph(s, t, w);
plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2) 
set( gca, 'XTick', [], 'YTick', [] );  

%% Matlab������ͼ
% ��Ȩͼ digraph(s,t)
s = [1,2,3,4,1];
t = [2,3,1,1,4];
G = digraph(s, t);
plot(G)
set( gca, 'XTick', [], 'YTick', [] );  

% ��Ȩͼ digraph(s,t,w)
s = [1,2,3,4];
t = [2,3,1,1];
w = [3,8,9,2];
G = digraph(s, t, w);
plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2) 
set( gca, 'XTick', [], 'YTick', [] );  