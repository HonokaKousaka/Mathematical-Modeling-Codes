function [dist,path] = Floyd_algorithm(D)
%% �ú����������һ��Ȩ���ڽӾ������������ڵ�֮������·��
% ���룺
%        D��Ȩ���ڽӾ���
% �����
%        dist����̾��������Ԫ��dist_ij��ʾ��ʾi,j�����ڵ����̾���
%        path��·��������Ԫ��path_ij��ʾ���Ϊi���յ�Ϊj�������ڵ�֮������·��Ҫ�����Ľڵ�

n = size(D,1);  % ����ڵ�ĸ���

% ��ʼ��dist����
dist = D;

% ������������ʼ��path����
path = zeros(n);
for j = 1:n
    path(:,j) = j;   % ����j�е�Ԫ�ر�Ϊj
end
for i = 1:n
    path(i,i) = -1;  % �����Խ���Ԫ�ر�Ϊ-1
end

% ���濪ʼ����ѭ��
for k=1:n    % �м�ڵ�k��1- n ѭ��
   for i=1:n     % ��ʼ�ڵ�i��1- n ѭ��
      for j=1:n    % �յ�ڵ�j��1-n ѭ��
          if dist(i,j)>dist(i,k)+dist(k,j)  % ���i,j�����ڵ�����̾������i��k����̾���+k��j����̾���
             dist(i,j)=dist(i,k)+dist(k,j);  % ��ô���Ǿ����������϶̵ľ���֮��ȡ��i,j����֮�����̾���
             path(i,j)=path(i,k);   % ���Ϊi���յ�Ϊj�������ڵ�֮������·��Ҫ�����Ľڵ����Ϊpath(i,k)
          end
      end
   end
end

end