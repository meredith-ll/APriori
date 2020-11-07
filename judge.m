function [flag] = judge(val,p_std)

% 此函数为概率判断函数
% 输入val为仅含0/1的一维列向量，p_std为概率阈值
% 当列向量中1出现的概率小于阈值时输出为0，否则为1

[m,~] = size(val);
s = sum(val);
p = s/m;
flag = 1;
if p < p_std
    flag = 0;
end
end