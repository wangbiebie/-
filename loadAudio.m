function [audio, fs] = loadAudio()
    choice = questdlg('选择音频来源', '音频选择', '自动生成', '提供文件', '提供文件');
    
    if strcmp(choice, '自动生成')
        % 生成自己的音频
        duration = 5;  % 音频时长（秒）
        fs = 44100;    % 采样率（Hz）
        t = 0:1/fs:duration-1/fs;
        f1 = randi([200, 800]);  % 随机基频（200 Hz到800 Hz之间）
        f2 = randi([1000, 2000]);  % 随机高频（1000 Hz到2000 Hz之间）
        audio = sin(2*pi*f1*t) + sin(2*pi*f2*t);
    else
        % 提供wav或mp3音频文件，此处我手头只有mp3音频
        [filename, filepath] = uigetfile('*.wav;*.mp3', '选择音频文件');
        [audio, fs] = audioread(fullfile(filepath, filename));
    end
end
