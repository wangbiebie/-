function playFilteredAudio(~, ~)
    % 播放滤波后的音频
    [originalAudio, fs] = loadAudio();      % 调用 loadAudio 函数加载原始音频数据
    noisyAudio = addNoise(originalAudio, fs);  % 调用 addNoise 函数为原始音频添加噪音
    filteredAudio = applyFilter(noisyAudio, fs);  % 调用 applyFilter 函数对带噪音的音频进行滤波
    sound(filteredAudio, fs);               % 使用 sound 函数播放滤波后的音频
end

    %该函数用于播放滤波后的音频
    %首先，通过调用 loadAudio 函数加载原始音频数据，获取原始音频信号 originalAudio 和采样率 fs
    %然后，使用 addNoise 函数为原始音频添加噪音，得到带噪音的音频信号 noisyAudio
    %接下来，使用 applyFilter 函数对带噪音的音频进行滤波处理，得到滤波后的音频信号 filteredAudio
    %最后，使用 sound 函数播放滤波后的音频，将滤波后的音频信号和采样率作为参数传递给该函数