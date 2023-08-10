function [fitresult, gof] = createFit(year, population)
%CREATEFIT(YEAR,POPULATION)
%  创建一个拟合。
%
%  要进行 '拟合曲线' 拟合的数据:
%      X 输入: year
%      Y 输出: population
%  输出:
%      fitresult: 表示拟合的拟合对象。
%      gof: 带有拟合优度信息的结构体。
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 11-Aug-2023 02:25:17 自动生成


%% 拟合: '拟合曲线'。
[xData, yData] = prepareCurveData( year, population );

% 设置 fittype 和选项。
ft = fittype( 'xm/(1+(xm/3.9-1)*exp(-r*(x-1790)))', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.254282178971531 0.257508254123736];

% 对数据进行模型拟合。
[fitresult, gof] = fit( xData, yData, ft, opts );

% 绘制数据拟合图。
figure( 'Name', '拟合曲线' );
h = plot( fitresult, xData, yData );
legend( h, '真实值点', '拟合曲线', 'Location', 'NorthEast', 'Interpreter', 'none' );
% 为坐标区加标签
xlabel( 'year', 'Interpreter', 'none' );
ylabel( 'population', 'Interpreter', 'none' );
grid on

end
