function [dist,path] = Floyd_algorithm(D)
%% 该函数用于求解一个权重邻接矩阵任意两个节点之间的最短路径
% 输入：
%        D是权重邻接矩阵
% 输出：
%        dist是最短距离矩阵，其元素dist_ij表示表示i,j两个节点的最短距离
%        path是路径矩阵，其元素path_ij表示起点为i，终点为j的两个节点之间的最短路径要经过的节点

n = size(D,1);  % 计算节点的个数

% 初始化dist矩阵
dist = D;

% 下面我们来初始化path矩阵
path = zeros(n);
for j = 1:n
    path(:,j) = j;   % 将第j列的元素变为j
end
for i = 1:n
    path(i,i) = -1;  % 将主对角线元素变为-1
end

% 下面开始三个循环
for k=1:n    % 中间节点k从1- n 循环
   for i=1:n     % 起始节点i从1- n 循环
      for j=1:n    % 终点节点j从1-n 循环
          if dist(i,j)>dist(i,k)+dist(k,j)  % 如果i,j两个节点间的最短距离大于i和k的最短距离+k和j的最短距离
             dist(i,j)=dist(i,k)+dist(k,j);  % 那么我们就令这两个较短的距离之和取代i,j两点之间的最短距离
             path(i,j)=path(i,k);   % 起点为i，终点为j的两个节点之间的最短路径要经过的节点更新为path(i,k)
          end
      end
   end
end

end