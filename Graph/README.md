迪杰斯特拉算法(Dijkstra)是由荷兰计算机科学家狄克斯特拉于1959年提出的，因此又叫狄克斯特拉算法。是从一个顶点到其余各顶点的最短路径算法，解决的是有权图中最短路径问题。迪杰斯特拉算法主要特点是从起始点开始，采用贪心算法的策略，每次遍历到始点距离最近且未访问过的顶点的邻接节点，直到扩展到终点为止。

贝尔曼-福特算法（Bellman-Ford）是由理查德·贝尔曼（Richard Bellman） 和莱斯特·福特创立的，求解单源最短路径问题的一种基于动态规划的算法。它的原理是对图进行V-1次松弛操作，得到所有可能的最短路径。其优于Dijkstra算法的方面是边的权值可以为负数、实现简单，缺点是时间复杂度过高，高达O(VE)。但算法可以进行若干种优化，提高了效率。

他们均可以用于实现最短路径问题。
