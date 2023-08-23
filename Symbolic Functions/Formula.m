%% matlab求解方程和方程组
% 不同的MATLAB版本之间的语法存在不兼容的情况：https://www.zhihu.com/question/360875116/answer/937256480
% 视频里面用到的是Matlab2017a版本，如果低版本版本可能会报错。
% 更多关于Matlab求方程的介绍可看这个博客：https://blog.csdn.net/weixin_30724853/article/details/99004382

%% solve函数
%% 例题1: 求解单变量方程
clear;clc
syms x
answ = solve(sin(x) == 1, x)  % 注意：这里的等号一定要有两个，一个等号表示赋值，两个等号才表示左右两边相等
answ = solve(sin(x) == 1)  % 只有一个符号变量x，所以可以不指定未知数
% 也可以这样写
clear;clc
syms x
eqn = (sin(x) == 1);  % eqn = sin(x) == 1;  
answ = solve(eqn, x)
% 因为三角函数是周期函数，如果要得到所有的解，则需要加上条件
[answ, params, condions] = solve(eqn, x, 'ReturnConditions', true)

%% 例题2: 多变量方程求解
clear;clc
syms a b c x
eqn = (a*x^2 + b*x + c == 0);
answ1 = solve(eqn, x)  % 将x视为未知数求解 
%  -(b + (b^2 - 4*a*c)^(1/2))/(2*a)
%  -(b - (b^2 - 4*a*c)^(1/2))/(2*a)
answ2 = solve(eqn, a) % 将a视为未知数求解
% -(c + b*x)/x^2

%% 例题3：方程组求解
clear;clc
syms u v a
eqn = [2*u + v == a, u - v == 1];
answ = solve(eqn, [u, v])
answ.u
answ.v
[answ_u, answ_v] = solve(eqn, [u, v])


%% solve 可能会警告
syms x
eqn = (sin(x) == x^2 - 1);
solve(eqn, x)  % 警告: Cannot solve symbolically. Returning a numeric approximation instead. 
% 画图看看 
fplot(sin(x), [-2 2])  % fplot函数可绘制表达式的图形
hold on
fplot(x^2 - 1, [-2 2]) 


%% vpasolve函数求解
% 用vpasolve函数指定求[0 2]上的解
syms x
eqn = sin(x) == x^2 - 1;
vpasolve(eqn, x, [0 2])
vpasolve(eqn, x, [-1 0])
vpasolve(eqn, x, [-10 10])
% vpasolve returns all solutions only for polynomial equations. 
% For nonpolynomial equations, there is no general method of finding all solutions.
% When you look for numerical solutions of a nonpolynomial equation or system that has several solutions,
% then, by default, vpasolve returns only one solution, if any. 
% To find more than just one solution, set random to true. 
% Now, calling vpasolve repeatedly might return several different solutions.
vpasolve(eqn, x, 'random', true) 
vpasolve(eqn, x, -5)   % 给定搜索的起始点


%% 来看一个更复杂的例子
syms x y
eqn = [x^2 - 2*x - 3*x*y == 10, y^4 == exp(-2*x/3*y)]
[answ_x, answ_y] = vpasolve(eqn, [x, y], 'random', true)
% 画图看看
ezplot(x^2 - 2*x - 3*x*y == 10, [-10 10])
hold on
ezplot(y^4 == exp(-2*x/3*y), [-10 10])
close % 关闭图形

% ezplot函数比较鸡肋，下面这个函数比较厉害哦
fimplicit(x^2 - 2*x - 3*x*y == 10, [-10 10],'r')  % R2016b版本之后才有
hold on
fimplicit(y^4 == exp(-2*x/3*y), [-10 10],'b')  % R2016b版本之后才有
[answ_x, answ_y] = vpasolve(eqn, [x, y],[-4 -1;1 5])  % 指定搜索的范围：x位于[-4 -1], y位于[1 5]
hold on
plot(answ_x, answ_y,'ko', 'MarkerSize',10)   
% plot(double(answ_x), double(answ_y),'ko', 'MarkerSize',10)   % double可以将我们的符号变量转换为数值变量


%% fsolve函数（求解功能最为强大哦）
% fsolve是Matlab优化工具箱中的一个函数，可专门用来求解特别复杂的方程和方程组
x0 = [0,0];  % 初始值
result_x = fsolve(@my_fun,x0)

% 当然你也可以用vpasolve函数试试
clear; clc
syms x1 x2
eqn =  [exp(-exp(-(x1+x2))) - x2*(1+x1^2) == 0, x1*cos(x2) + x2*sin(x1) - 0.5 == 0]
[answ_x1, answ_x2] = vpasolve(eqn, [x1, x2], [0 0])