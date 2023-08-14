%% 注意：以下代码需要较新版本的matlab才能运行（最好是2016版本及以上哦）
% 如果运行出错请下载新版的matlab代码再运行

% 注意哦，Matlab中的图节点要从1开始编号，所以这里把0全部改为了9
% 编号最好是从1开始连续编号，不要自己随便定义编号
s = [9 9 1 1 2 2 2 7 7 6 6  5  5 4];
t = [1 7 7 2 8 3 5 8 6 8 5  3  4 3];
w = [4 8 3 8 2 7 4 1 6 6 2 14 10 9];
G = graph(s,t,w);
plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2) 
set( gca, 'XTick', [], 'YTick', [] );  
% [P,d] = shortestpath(G,start,end,'Method',algorithm)
% algorithm在无向图中，只能是auto, unweighted, positive
% unweighted假设每条边权重都是1
% positive使用Dijkstra算法
% algorithm在有向图中，可以是mixed，是Bellman-Ford算法
[P,d] = shortestpath(G, 9, 4)  %注意：该函数matlab2015b之后才有哦

% 在图中高亮我们的最短路径
myplot = plot(G, 'EdgeLabel', G.Edges.Weight, 'linewidth', 2);  %首先将图赋给一个变量
highlight(myplot, P, 'EdgeColor', 'r')   %对这个变量即我们刚刚绘制的图形进行高亮处理（给边加上r红色）

% 求出任意两点的最短路径矩阵
D = distances(G)   %注意：该函数matlab2015b之后才有哦
D(1,2)  % 1 -> 2的最短路径
D(9,4)  % 9 -> 4的最短路径

% 找出给定范围内的所有点  nearest(G,s,d)
% 返回图形 G 中与节点 s 的距离在小于等于 d 的所有节点
[nodeIDs,dist] = nearest(G, 2, 10)   %注意：该函数matlab2016a之后才有哦