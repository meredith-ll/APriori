function [list] = frequent(data_0,list_0,tag_0,sup_min)

% �˺���Ϊ��Ƶ�������
% ��������Ϊ��ʼ���ݡ���ʼlist����ʼtag��֧�ֶ�
% ���Ϊ������������ϣ�ÿ��Ϊһ����ϣ�ÿ����ֵ��ʾ��Ӧԭʼ���ݵ��к�

[n,~] = size(list_0);
for i = 1:n
    ii = i-1;
    %     ��ʼ��������
    strii = num2str(ii);
    stri = num2str(i);
    listnameii = strcat('list_',strii);
    listnamei = strcat('list_',stri);
    datanameii = strcat('data_',strii);
    datanamei = strcat('data_',stri);
    tagnameii = strcat('tag_',strii);
    tagnamei = strcat('tag_',stri);
    %     �����Ҫ����������
    eval([tagnamei,' = name(',datanameii,',sup_min);'])
    % tag_i = name(data_(i-1),sup_min)
    eval(['[~,m] = size(',tagnamei,');'])
    % [~,m] = size(tag_i)
    eval([listnamei,' = [];'])
    % list_i = []
    %     ��������������
    for j = 1:m
        eval([listnamei,' = [',listnamei,';',tagnameii,'(',tagnamei,'(1,j),:)];'])
        % list_i = [list_i;tag_(i-1)(tag_i(1,j),:)]
    end
    %     ���һά���Ӽ�
    eval([tagnamei,' = unique(',listnamei,');'])
    % tag_i = unique(list_i)
    eval([tagnamei,' = subset(',tagnamei,',i);'])
    % tag_i = subset(tag_i,i)
    eval(['[m,~] = size(',tagnamei,');'])
    % [m,~] = size(tag_i)
    %     �����µ�����
    if m > 1
        for j = 1:m
            eval([datanamei,'(:,j) = choose(data_0,',tagnamei,'(j,:));'])
            % data_i(:,j) = choose(data_0,tag_i(j,:))
        end
    else
        break
    end
end
eval(['list = ',listnameii,';'])
% list = list_(i-1)
end