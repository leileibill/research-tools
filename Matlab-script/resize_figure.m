function resize_figure(scale, ratio)

	if nargin <1
		scale = 2;
	end

	if nargin < 2
		ratio =0.618;
	end

	width = 3.5*scale;
	height = 3.5*scale*ratio;
	% f = gcf;
	% f.Units = 'inches';   % works only after 2014b

	po = 1;
	set(gcf, 'Units', 'inches')
	set(gcf, 'Position', [po po width height])
	set(gcf,'PaperPositionMode','auto')
	set(gcf,'PaperSize', [width height])
	
    ha_all = findobj(gcf,'type','axes');    % find all axes in the current figure   
    for index = 1:length(ha_all)
		ha = ha_all(index);
		set(ha,'LooseInset',get(ha,'TightInset')) % remove white margin
	end

end
