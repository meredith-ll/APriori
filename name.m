function [result] = name(data,p_std)

% �˺���������������ж��������к�
% ����dataΪ��Ҫ�����жϵ����飬p_stdΪ�ж���ֵ
% �˺�����data���������н����жϣ���������������������

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