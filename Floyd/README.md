Floyd‐Warshall算法（英语：Floyd‐Warshall algorithm或简写为Floyd algorithm），中文亦称弗洛伊德算法，是解决任意两点间的最短路径的一种算法，可以正确处理无向图或有向图（可以有负权重，但不可存在负权回路）的最短路径问题。Floyd算法与迪杰斯特拉算法或贝尔曼福特算法相比，能够一次性的求出任意两点之间的最短路径，后两种算法运行一次只能计算出给定的起点和终点之间的最短路径。

Floyd算法基于了动态规划，计算的时间也要高于后两种算法，其算法核心的步骤由三层循环构成。
