function playFilteredAudio(~, ~)
    % �����˲������Ƶ
    [originalAudio, fs] = loadAudio();      % ���� loadAudio ��������ԭʼ��Ƶ����
    noisyAudio = addNoise(originalAudio, fs);  % ���� addNoise ����Ϊԭʼ��Ƶ�������
    filteredAudio = applyFilter(noisyAudio, fs);  % ���� applyFilter �����Դ���������Ƶ�����˲�
    sound(filteredAudio, fs);               % ʹ�� sound ���������˲������Ƶ
end

    %�ú������ڲ����˲������Ƶ
    %���ȣ�ͨ������ loadAudio ��������ԭʼ��Ƶ���ݣ���ȡԭʼ��Ƶ�ź� originalAudio �Ͳ����� fs
    %Ȼ��ʹ�� addNoise ����Ϊԭʼ��Ƶ����������õ�����������Ƶ�ź� noisyAudio
    %��������ʹ�� applyFilter �����Դ���������Ƶ�����˲������õ��˲������Ƶ�ź� filteredAudio
    %���ʹ�� sound ���������˲������Ƶ�����˲������Ƶ�źźͲ�������Ϊ�������ݸ��ú���