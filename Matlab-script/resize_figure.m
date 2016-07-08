function resize_figure(scale, ratio)

if nargin <1
    scale = 2;
end

if nargin < 2
    ratio = 0.6;
end

width = 3.5*scale;
height = 3.5*scale*ratio
% f = gcf;
% f.Units = 'inches';   % works only after 2014b

po = 1;
set(gcf, 'Units', 'inches')
set(gcf, 'Position', [po po width height])
set(gcf,'PaperPositionMode','auto')
set(gcf,'PaperSize', [width height])

end
