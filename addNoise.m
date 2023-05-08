function noisyAudio = addNoise(audio, fs)
    % 添加加性噪声
    snr = 10;  % 信噪比（dB）
    % 此处信噪比（snr）越小，噪音能量越大，原始信号能量越小;
    % 经测试，100时噪音能量过小，1略大，故而此处取值snr = 10;
    noisyAudio = awgn(audio, snr, 'measured', 'db');
    
    % 绘制加性噪声音频波形
    plotWaveform(noisyAudio, fs, '加性噪声音频波形');
end