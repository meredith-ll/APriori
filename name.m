function [result] = name(data,p_std)

% 此函数负责输出满足判断条件的列号
% 输入data为需要进行判断的数组，p_std为判断阈值
% 此函数对data中数据逐列进行判断，将满足条件的列序号输出

[~,n] = size(data);
t = 1;
result = [];
for i = 1:n
    if judge(data(:,i),p_std) == 1
        result(t) = i;
        t = t+1;
    end
end
end