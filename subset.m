function [outputArg] = subset(inputArg1,inputArg2)

% �˺�������Ϊ���Ӽ�
% ����������Ϊ���顢�Ӽ�ά��
% �����Ϊ��������Ӽ�

num = unique(inputArg1);
result = nchoosek(num,inputArg2+1);
outputArg = result;
end