function [flag] = judge(val,p_std)

% �˺���Ϊ�����жϺ���
% ����valΪ����0/1��һά��������p_stdΪ������ֵ
% ����������1���ֵĸ���С����ֵʱ���Ϊ0������Ϊ1

[m,~] = size(val);
s = sum(val);
p = s/m;
flag = 1;
if p < p_std
    flag = 0;
end
end