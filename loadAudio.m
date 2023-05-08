function [audio, fs] = loadAudio()
    choice = questdlg('选择音频来源', '音频选择', '自动生成', '提供文件', '提供文件');
    
    if strcmp(choice, '自动生成')
        % 生成自己的音频
        duration = 5;  % 音频时长（秒）
        fs = 44100;    % 采样率（Hz）
        t = 0:1/fs:duration-1/fs;
        f1 = randi([200, 800]);  % 随机基频（200 Hz到800 Hz之间）
        f2 = randi([1000, 2000]);  % 随机高频（1000 Hz到2000 Hz之间）
        % 此处用于保证每次生成的音频不同
        audio = sin(2*pi*f1*t) + sin(2*pi*f2*t);
    else
        % 提供wav或mp3音频文件，mp3音频更广泛使用，故而适配
        % 其实是因为我手头只有mp3音频文件了
        [filename, filepath] = uigetfile('*.wav;*.mp3', '选择音频文件');
        [audio, fs] = audioread(fullfile(filepath, filename));
    end
end

    % 音频采样率通常为：8000Hz、11025Hz、22050Hz、24000Hz、44100Hz、48000Hz
    % 其中，8000Hz是电话所用
    % 手机常用后三个采样率，48000Hz效果最好但尚未普及
    % 44.1kHz是手机常用采样率，也是各大操作系统默认录音用的采样率
    % 因此，此处采用44100Hz，可以方便手机录的音频用于测试
    
    % 5秒长度可以修改，为了方便测试程序，采用不长不短的5秒
    % 推荐设置不超过10秒