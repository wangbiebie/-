function plotWaveform(audio, fs, titleText)
    t = (0:length(audio)-1)/fs;
    plot(t, audio);
    xlabel('ʱ�� (��)');
    ylabel('��ֵ');
    title(titleText);
end