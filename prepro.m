function [data,list,tag,order] = prepro(file)

% 此函数为数据预处理函数，将购物清单转换为数组
% 输入file为文件名，文件内容为购物清单详情
% 输出依次为处理好的数据、初始清单、初始标签、清单顺序

[~,data_raw,~] = xlsread(file);
[m,n] = size(data_raw);
% 获得清单内容详情
order = unique(data_raw);
order(1,:)=[];
[p,q] = size(order);
data_v1 = zeros(m,n);
% 清单字符串内容替换为数组
for i = 1:m
    for j = 1:n
        for k = 1:p
            if strcmp(data_raw{i,j},order{k,q})
                data_v1(i,j) = k;
            end
        end
    end
end
order_data = unique(data_v1);
order_data(1,:) = [];
[m,n] = size(data_v1);
[p,~] = size(order_data);
data_v2 = zeros(m,p);
% 将数组规范化，每行为一个清单，每列代表一个商品
for i = 1:m
    for j = 1:n
        if data_v1(i,j) ~= 0
            data_v2(i,data_v1(i,j)) = 1;
        end
    end
end
data = data_v2;
list = [1:p]';
tag = [1:p]';
end