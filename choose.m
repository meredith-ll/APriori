function [result] = choose(data,list)

% �˺���Ϊ����ѡ�񲢺ϲ����麯��
% ����dataΪ��ʼ���飬listΪһ������
% list������Ϊ��Ҫ�ϲ��������
% ��Ҫ����ȡdata�е��в��ϲ������result

[m,~] = size(data);
[~,q] = size(list);
result = ones(m,1);
for i = 1:q
    result = result.*data(:,list(i));
end
end