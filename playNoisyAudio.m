function playNoisyAudio(~, ~)
    [originalAudio, fs] = loadAudio();
    noisyAudio = addNoise(originalAudio, fs);
    sound(noisyAudio, fs);
end