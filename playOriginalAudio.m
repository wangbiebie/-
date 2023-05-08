function playOriginalAudio(~, ~)
    [audio, fs] = loadAudio();
    sound(audio, fs);
end