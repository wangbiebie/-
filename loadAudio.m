function [audio, fs] = loadAudio()
    choice = questdlg('ѡ����Ƶ��Դ', '��Ƶѡ��', '�Զ�����', '�ṩ�ļ�', '�ṩ�ļ�');
    
    if strcmp(choice, '�Զ�����')
        % �����Լ�����Ƶ
        duration = 5;  % ��Ƶʱ�����룩
        fs = 44100;    % �����ʣ�Hz��
        t = 0:1/fs:duration-1/fs;
        f1 = randi([200, 800]);  % �����Ƶ��200 Hz��800 Hz֮�䣩
        f2 = randi([1000, 2000]);  % �����Ƶ��1000 Hz��2000 Hz֮�䣩
        audio = sin(2*pi*f1*t) + sin(2*pi*f2*t);
    else
        % �ṩwav��mp3��Ƶ�ļ����˴�����ͷֻ��mp3��Ƶ
        [filename, filepath] = uigetfile('*.wav;*.mp3', 'ѡ����Ƶ�ļ�');
        [audio, fs] = audioread(fullfile(filepath, filename));
    end
end
