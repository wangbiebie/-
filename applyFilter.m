
function filteredAudio = applyFilter(audio, fs)
    % 设计滤波器类型
    choice = questdlg('选择滤波器类型', '滤波器选择', 'IIR滤波器', 'FIR滤波器', '低通滤波器', 'IIR滤波器');
    
    % 根据选择设计滤波器
    if strcmp(choice, 'IIR滤波器')
        filterType = 'IIR';
        filterOrder = 4;
        fc = 2000;  % 截止频率（Hz）
        b = fir1(filterOrder, fc/(fs/2));
    elseif strcmp(choice, 'FIR滤波器')
        filterType = 'FIR';
        filterOrder = 50;
        fc = 2000;  % 截止频率（Hz）
        b = fir1(filterOrder, fc/(fs/2));
    else
        filterType = '低通滤波器';
        filterOrder = 4;
        fc = 2000;  % 截止频率（Hz）
        [b, a] = butter(filterOrder, fc/(fs/2));
    end
    
    % 进行数字滤波
    if strcmp(filterType, '低通滤波器')
        filteredAudio = filter(b, a, audio);
    else
        filteredAudio = filter(b, 1, audio);
    end
    
    % 绘制滤波器的时域波形和频谱
    subplot(2, 2, 1);
    plot(0:filterOrder, b);
    xlabel('采样点');
    ylabel('振幅');
    title('滤波器时域波形');
    
    subplot(2, 2, 2);
    plotSpectrum(filteredAudio, fs, '滤波后音频频谱');
end