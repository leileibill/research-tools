function resize_figure(width, height)

if nargin < 2
  width =   300
end
if nargin < 1
    height=width*0.4;
end
set(gcf, 'Position', [200 200 200+width 200+height])
set(gcf,'PaperPositionMode','auto')
end
