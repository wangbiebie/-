function playNoisyAudio(~, ~)
    % ���Ŵ���������Ƶ
    [originalAudio, fs] = loadAudio();    % ���� loadAudio ��������ԭʼ��Ƶ����
    noisyAudio = addNoise(originalAudio, fs);  % ���� addNoise ����Ϊԭʼ��Ƶ�������
    sound(noisyAudio, fs);                 % ʹ�� sound �������Ŵ���������Ƶ
end

    %�ú������ڲ��Ŵ���������Ƶ
    %���ȣ�ͨ������ loadAudio ��������ԭʼ��Ƶ���ݣ���ȡԭʼ��Ƶ�ź� originalAudio �Ͳ����� fs
    %Ȼ��ʹ�� addNoise ����Ϊԭʼ��Ƶ����������õ�����������Ƶ�ź� noisyAudio
    %���ʹ�� sound �������Ŵ���������Ƶ��������������Ƶ�źźͲ�������Ϊ�������ݸ��ú���