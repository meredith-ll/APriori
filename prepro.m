function [data,list,tag,order] = prepro(file)

% �˺���Ϊ����Ԥ���������������嵥ת��Ϊ����
% ����fileΪ�ļ������ļ�����Ϊ�����嵥����
% �������Ϊ����õ����ݡ���ʼ�嵥����ʼ��ǩ���嵥˳��

[~,data_raw,~] = xlsread(file);
[m,n] = size(data_raw);
% ����嵥��������
order = unique(data_raw);
order(1,:)=[];
[p,q] = size(order);
data_v1 = zeros(m,n);
% �嵥�ַ��������滻Ϊ����
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
% ������淶����ÿ��Ϊһ���嵥��ÿ�д���һ����Ʒ
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