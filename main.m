clear
% 设定需要处理的数据文件名
filename = 'groceries.xlsx';
%设定参数
[sup_min,conf_min] = deal(0.05,0.4);
% 数据预处理
[data_0,list_0,tag_0,order] = prepro(filename);
% 得到频繁项集
list_final = frequent(data_0,list_0,tag_0,sup_min);
% 得到最终结果
[rele,num] = confi(data_0,list_final,conf_min,order);
% 输出结果
dis(rele)