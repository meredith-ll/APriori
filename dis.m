function [] = dis(rele)

% 此函数为输出函数

[m,n] = size(rele);
fprintf('共有%d组相关购买数据相关，分别为：\n',m)
for i = 1:m
    fprintf('第%d组：\n',i)
    for j = 1:n
        fprintf('    %s\n',rele{i,j})
    end
end
end