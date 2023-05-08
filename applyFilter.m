
function filteredAudio = applyFilter(audio, fs)
    % ����˲�������
    choice = questdlg('ѡ���˲�������', '�˲���ѡ��', 'IIR�˲���', 'FIR�˲���', '��ͨ�˲���', 'IIR�˲���');
    
    % ����ѡ������˲���
    if strcmp(choice, 'IIR�˲���')
        filterType = 'IIR';
        filterOrder = 4;
        fc = 2000;  % ��ֹƵ�ʣ�Hz��
        b = fir1(filterOrder, fc/(fs/2));
    elseif strcmp(choice, 'FIR�˲���')
        filterType = 'FIR';
        filterOrder = 50;
        fc = 2000;  % ��ֹƵ�ʣ�Hz��
        b = fir1(filterOrder, fc/(fs/2));
    else
        filterType = '��ͨ�˲���';
        filterOrder = 4;
        fc = 2000;  % ��ֹƵ�ʣ�Hz��
        [b, a] = butter(filterOrder, fc/(fs/2));
    end
    
    % ���������˲�
    if strcmp(filterType, '��ͨ�˲���')
        filteredAudio = filter(b, a, audio);
    else
        filteredAudio = filter(b, 1, audio);
    end
    
    % �����˲�����ʱ���κ�Ƶ��
    subplot(2, 2, 1);
    plot(0:filterOrder, b);
    xlabel('������');
    ylabel('���');
    title('�˲���ʱ����');
    
    subplot(2, 2, 2);
    plotSpectrum(filteredAudio, fs, '�˲�����ƵƵ��');
end