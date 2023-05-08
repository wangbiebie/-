function createGUI()
    % ���������ںͰ�ť
    figure('Name', '�����źŴ������', 'NumberTitle', 'off', 'Position', [100, 100, 600, 400]);
    uicontrol('Style', 'pushbutton', 'String', '����ԭʼ��Ƶ', 'Position', [50, 50, 150, 30], 'Callback', @playOriginalAudio);
    uicontrol('Style', 'pushbutton', 'String', '���ż�������', 'Position', [250, 50, 150, 30], 'Callback', @playNoisyAudio);
    uicontrol('Style', 'pushbutton', 'String', '�����˲�����Ƶ', 'Position', [450, 50, 150, 30], 'Callback', @playFilteredAudio);
    
    % ������Ƶ�ļ�
    [originalAudio, fs] = loadAudio();
    
    % ���ɼ�������
    noisyAudio = addNoise(originalAudio, fs);
    
    % �����˲�ǰ����źŶԱ�
    filteredAudio = applyFilter(noisyAudio, fs);
    
    % ����Ƶ�׺Ͳ���
    subplot(2, 2, 1);
    plotSpectrum(originalAudio, fs, 'ԭʼ��ƵƵ��');
    
    subplot(2, 2, 2);
    plotSpectrum(noisyAudio, fs, '����������ƵƵ��');
    
    subplot(2, 2, 3);
    plotSpectrum(filteredAudio, fs, '�˲�����ƵƵ��');
    
    subplot(2, 2, 4);
    plotWaveform(filteredAudio, fs, '�˲�����Ƶ����');
end