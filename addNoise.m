function noisyAudio = addNoise(audio, fs)
    % ��Ӽ�������
    snr = 10;  % ����ȣ�dB��
    noisyAudio = awgn(audio, snr, 'measured', 'db');
    
    % ���Ƽ���������Ƶ����
    plotWaveform(noisyAudio, fs, '����������Ƶ����');
end