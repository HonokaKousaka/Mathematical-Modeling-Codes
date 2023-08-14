function [] = print_all_path(D)
%% 该函数的作用是求解一个权重邻接矩阵任意两个节点之间的最短路径,并打印所有的结果出来
% 输入：
%        D是权重邻接矩阵
% 输出：无

[dist,path] = Floyd_algorithm(D);   % 调用之前的Floyd_algorithm函数
n = size(D,1);
if n == 1
    warning('请输入至少两阶以上的权重邻接矩阵')   % 在屏幕中提示警告信息
    return;   % 不运行下面的语句，直接退出函数
end

for i = 1:n
    for j = 1:n
        if i ~= j  % 不等号用~=表示
            print_path(path,dist,i,j);   % 调用之前的print_path函数
            disp('-------------------------------------------')
            disp('  ')
        end
    end
end

end