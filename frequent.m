function [list] = frequent(data_0,list_0,tag_0,sup_min)

% 此函数为求频繁项集函数
% 输入依次为初始数据、初始list、初始tag、支持度
% 输出为满足条件的组合，每行为一种组合，每列数值表示对应原始数据的列号

[n,~] = size(list_0);
for i = 1:n
    ii = i-1;
    %     初始化数组名
    strii = num2str(ii);
    stri = num2str(i);
    listnameii = strcat('list_',strii);
    listnamei = strcat('list_',stri);
    datanameii = strcat('data_',strii);
    datanamei = strcat('data_',stri);
    tagnameii = strcat('tag_',strii);
    tagnamei = strcat('tag_',stri);
    %     求符合要求的数组序号
    eval([tagnamei,' = name(',datanameii,',sup_min);'])
    % tag_i = name(data_(i-1),sup_min)
    eval(['[~,m] = size(',tagnamei,');'])
    % [~,m] = size(tag_i)
    eval([listnamei,' = [];'])
    % list_i = []
    %     构造数组名矩阵
    for j = 1:m
        eval([listnamei,' = [',listnamei,';',tagnameii,'(',tagnamei,'(1,j),:)];'])
        % list_i = [list_i;tag_(i-1)(tag_i(1,j),:)]
    end
    %     求多一维的子集
    eval([tagnamei,' = unique(',listnamei,');'])
    % tag_i = unique(list_i)
    eval([tagnamei,' = subset(',tagnamei,',i);'])
    % tag_i = subset(tag_i,i)
    eval(['[m,~] = size(',tagnamei,');'])
    % [m,~] = size(tag_i)
    %     构建新的序列
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