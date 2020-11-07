function [result] = choose(data,list)

% 此函数为按需选择并合并数组函数
% 输入data为初始数组，list为一行向量
% list行内容为需要合并的列序号
% 按要求提取data中的列并合并，输出result

[m,~] = size(data);
[~,q] = size(list);
result = ones(m,1);
for i = 1:q
    result = result.*data(:,list(i));
end
end