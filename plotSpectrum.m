function plotSpectrum(audio, fs, titleText)
    % 计算音频的频谱
    N = length(audio);                   % 音频长度
    fftSize = 2^nextpow2(N);             % 计算FFT的大小，取最接近音频长度的2的幂次方
    Y = abs(fft(audio, fftSize));        % 对音频进行FFT，并计算幅度谱
    f = fs*(0:(fftSize/2))/fftSize;      % 计算频率轴
    
    % 绘制频谱
    plot(f, 20*log10(Y(1:fftSize/2+1))); % 绘制频谱，转换为对数刻度
    xlabel('频率 (Hz)');                  % 设置横轴标签
    ylabel('幅值 (dB)');                  % 设置纵轴标签
    title(titleText);                     % 设置图像标题
end

    %该函数用于绘制音频信号的频谱图
    %首先，根据音频的长度确定进行FFT的大小，通常选择最接近音频长度的2的幂次方
    %然后，通过调用fft函数计算音频的FFT，并获取其幅度谱
    %接下来，通过计算频率轴上的点的值，将频谱绘制在图像上
    %在绘制过程中，使用对数刻度表示幅度，这样更容易观察到不同频率成分的相对强度
    %最后，设置图像的横轴标签、纵轴标签和标题