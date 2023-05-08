function noisyAudio = addNoise(audio, fs)
    % 添加加性噪声
    snr = 10;  % 信噪比（dB）
    noisyAudio = awgn(audio, snr, 'measured', 'db');
    
    % 绘制加性噪声音频波形
    plotWaveform(noisyAudio, fs, '加性噪声音频波形');
end