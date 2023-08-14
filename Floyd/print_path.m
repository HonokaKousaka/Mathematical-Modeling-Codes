function [] = print_path(path,dist,i,j)
%% 该函数的作用是打印从i到j经过的最短路径
% 输入：
%        path是使用floyd算法求出来的路径矩阵
%        dist是使用floyd算法求出来的最短距离矩阵
%        i是起始节点的编号
%        j是终点节点的编号
% 输出：无

if i == j
    warning('起点和终点相同，请检查后重新输入')  % 在屏幕中提示警告信息
    return;  % 不运行下面的语句，直接退出函数
end
if path(i,j) == j   % 如果path(i,j) = j，则有两种可能：
% （1）如果dist(i,j) 为 Inf , 则说明从i到j没有路径可以到达
    if dist(i,j) == Inf
        disp(['从',num2str(i),'到',num2str(j),'没有路径可以到达'])
% （2）如果dist(i,j) 不为 Inf , 则说明从i到j可直接到达，且为最短路径
    else
        disp(['从',num2str(i),'到',num2str(j),'的最短路径为'])
        disp([num2str(i),' ---> ',num2str(j)])
        disp(['最短距离为',num2str(dist(i,j))])
    end
else  % 如果path(i,j) ~= j，则说明中间经过了其他节点：
    k = path(i,j);
    result = [num2str(i),' ---> '];  % 初始化要打印的这个字符串
    while k ~= j  % 只要k不等于j, 就一直循环下去
        result = [result , num2str(k) , ' ---> ' ];  % i先走到k这个节点处
        k = path(k,j);
    end
    result = [result , num2str(k)];
    disp(['从',num2str(i),'到',num2str(j),'的最短路径为'])
    disp(result)
    disp(['最短距离为',num2str(dist(i,j))])
end

end