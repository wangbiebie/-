function playFilteredAudio(~, ~)
    [originalAudio, fs] = loadAudio();
    noisyAudio = addNoise(originalAudio, fs);
    filteredAudio = applyFilter(noisyAudio, fs);
    sound(filteredAudio, fs);
end