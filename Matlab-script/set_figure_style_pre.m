function set_figure_style_pre(line_scale, marker_scale, font_scale)

    if nargin <1
        line_scale = 2;
        marker_scale = 2;
        font_scale = 2;
    end
    
    % Line width
    set(0,'DefaultLinelineWidth', 0.8*line_scale)
    set(0,'DefaultLineMarkerSize',4*marker_scale)
    set(0,'DefaultAxesFontSize',8*font_scale)
end

