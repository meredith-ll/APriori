function [outputArg] = subset(inputArg1,inputArg2)

% 此函数功能为求子集
% 输入项依次为数组、子集维度
% 输出项为该数组的子集

num = unique(inputArg1);
result = nchoosek(num,inputArg2+1);
outputArg = result;
end