function [conf,m] = confi(data_0,list_final,conf_min,order)

% �˺�������Ϊ�ж����Ŷ�
% ��������Ϊԭʼ�����顢��Ҫ�жϵ�����š����Ŷ���ֵ����Ŀ��Ӧ��ϵ
% �������Ϊ������������Ŀ����Ŀ������

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