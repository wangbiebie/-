function noisyAudio = addNoise(audio, fs)
    % ��Ӽ�������
    snr = 10;  % ����ȣ�dB��
    % �˴�����ȣ�snr��ԽС����������Խ��ԭʼ�ź�����ԽС;
    % �����ԣ�100ʱ����������С��1�Դ󣬹ʶ��˴�ȡֵsnr = 10;
    noisyAudio = awgn(audio, snr, 'measured', 'db');
    
    % ���Ƽ���������Ƶ����
    plotWaveform(noisyAudio, fs, '����������Ƶ����');
end