function [conf,m] = confi(data_0,list_final,conf_min,order)

% 此函数功能为判断置信度
% 输入依次为原始数据组、需要判断的组序号、置信度阈值、条目对应关系
% 输出依次为满足条件的条目、条目组数量

[m,n] = size(list_final);
[p,~] = size(data_0);
result = [];
t = 1;
for i = 1:m
    temp = ones(p,1);
    for j = 1:n
        temp = temp.*data_0(:,list_final(i,j));
    end
    flag = max([sum(temp)/sum(data_0(:,list_final(i,1))),sum(temp)/sum(data_0(:,list_final(i,2)))]);
    if flag > conf_min
        result(t,:) = list_final(i,:);
        t = t+1;
    end
end
[m,n] = size(result);

for i = 1:m
    for j = 1:n
       namee(i,j) = order(result(i,j),1); 
    end 
end
conf = namee;
end