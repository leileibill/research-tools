function resize_figure(width, height)

if nargin <1
    width=7;
end

if nargin < 2
  height=width*0.6;
end

% f = gcf;
% f.Units = 'inches';   % works only after 2014b

po = 1;
set(gcf, 'Units', 'inches')
set(gcf, 'Position', [po po width height])
set(gcf,'PaperPositionMode','auto')

end
