function playOriginalAudio(~, ~)
    % 播放原始音频
    [audio, fs] = loadAudio();  % 调用 loadAudio 函数加载音频数据
    sound(audio, fs);          % 使用 sound 函数播放音频
end

    %该函数用于播放原始音频
    %首先，通过调用 loadAudio 函数加载音频数据，获得音频信号 audio 和采样率 fs
    %然后，使用 sound 函数播放音频，将音频信号和采样率作为参数传递给该函数