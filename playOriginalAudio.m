function playOriginalAudio(~, ~)
    % ����ԭʼ��Ƶ
    [audio, fs] = loadAudio();  % ���� loadAudio ����������Ƶ����
    sound(audio, fs);          % ʹ�� sound ����������Ƶ
end

    %�ú������ڲ���ԭʼ��Ƶ
    %���ȣ�ͨ������ loadAudio ����������Ƶ���ݣ������Ƶ�ź� audio �Ͳ����� fs
    %Ȼ��ʹ�� sound ����������Ƶ������Ƶ�źźͲ�������Ϊ�������ݸ��ú���