function createGUI()
    % 创建主窗口和按钮
    figure('Name', '语音信号处理程序', 'NumberTitle', 'off', 'Position', [100, 100, 600, 400]);
    uicontrol('Style', 'pushbutton', 'String', '播放原始音频', 'Position', [50, 50, 150, 30], 'Callback', @playOriginalAudio);
    uicontrol('Style', 'pushbutton', 'String', '播放加性噪声', 'Position', [250, 50, 150, 30], 'Callback', @playNoisyAudio);
    uicontrol('Style', 'pushbutton', 'String', '播放滤波后音频', 'Position', [450, 50, 150, 30], 'Callback', @playFilteredAudio);
    
    % 加载音频文件
    [originalAudio, fs] = loadAudio();
    
    % 生成加性噪声
    noisyAudio = addNoise(originalAudio, fs);
    
    % 进行滤波前后的信号对比
    filteredAudio = applyFilter(noisyAudio, fs);
    
    % 绘制频谱和波形
    subplot(2, 2, 1);
    plotSpectrum(originalAudio, fs, '原始音频频谱');
    
    subplot(2, 2, 2);
    plotSpectrum(noisyAudio, fs, '加性噪声音频频谱');
    
    subplot(2, 2, 3);
    plotSpectrum(filteredAudio, fs, '滤波后音频频谱');
    
    subplot(2, 2, 4);
    plotWaveform(filteredAudio, fs, '滤波后音频波形');
end