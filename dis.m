function [] = dis(rele)

% �˺���Ϊ�������

[m,n] = size(rele);
fprintf('����%d����ع���������أ��ֱ�Ϊ��\n',m)
for i = 1:m
    fprintf('��%d�飺\n',i)
    for j = 1:n
        fprintf('    %s\n',rele{i,j})
    end
end
end