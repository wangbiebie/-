function plotSpectrum(audio, fs, titleText)
    N = length(audio);
    fftSize = 2^nextpow2(N);
    Y = abs(fft(audio, fftSize));
    f = fs*(0:(fftSize/2))/fftSize;
    
    plot(f, 20*log10(Y(1:fftSize/2+1)));
    xlabel('ÆµÂÊ (Hz)');
    ylabel('·ùÖµ (dB)');
    title(titleText);
end