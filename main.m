clear
% �趨��Ҫ����������ļ���
filename = 'groceries.xlsx';
%�趨����
[sup_min,conf_min] = deal(0.05,0.4);
% ����Ԥ����
[data_0,list_0,tag_0,order] = prepro(filename);
% �õ�Ƶ���
list_final = frequent(data_0,list_0,tag_0,sup_min);
% �õ����ս��
[rele,num] = confi(data_0,list_final,conf_min,order);
% ������
dis(rele)