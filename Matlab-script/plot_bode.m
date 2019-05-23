function [f, mag, phase] = plot_bode(tf, freq_min, freq_max, line_style)
    switch nargin
        case 4
            w = logspace(log10(freq_min), log10(freq_max), 100000) * 2 * pi;
            [mag, phase] = bode(tf,w);
        case 3
            w = logspace(log10(freq_min), log10(freq_max), 100000) * 2 * pi;
            [mag, phase] = bode(tf,w);
            line_style = '-';
        otherwise
            [mag, phase, w] = bode(tf);
            line_style = '-';
    end


    f = w/2/pi;
    mag = mag(:);
    phase = phase(:);

    ax1 = subplot(2,1,1);
    semilogx(f,20*log10(mag), line_style);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude (dB)');
    hold on;
    
    ax2 = subplot(2,1,2);
    semilogx(f,phase, line_style);
    xlabel('Frequency (Hz)');
    ylabel('Phase (degree)');
    yticks([-360 -270 -180 -135 -90 -45 0 45 90 135 180 270 360])
    hold on
    
    linkaxes([ax2,ax1],'x'); 
    xlim([freq_min, freq_max]);
end