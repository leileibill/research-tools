function [y, t] = plot_step(tf, t_final, line_style)
    switch nargin
        case 1
            [y, t] = step(tf);
            line_style = '-';
        case 2
            [y, t] = step(tf, t_final);
            line_style = '-';
    end

    

    plot(t, y, line_style);
    xlabel('Time (s)');
    ylabel('Amplitude');

end