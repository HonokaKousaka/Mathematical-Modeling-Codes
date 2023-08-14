% 有向图
%% 首先将图转换为权重邻接矩阵D
n = 5;  %一共五个节点
D = ones(n) ./ zeros(n);  % 全部元素初始化为Inf
for i = 1:n
    D(i,i) = 0;  % 主对角线元素为0
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

%% 调用Floyd_algorithm函数求解
[dist,path] = Floyd_algorithm(D)

print_path(path,dist,1,5)
print_path(path,dist,1,4)
print_path(path,dist,3,1)

clc
disp('下面我们打印任意两点之间的最短距离：')
print_all_path(D)