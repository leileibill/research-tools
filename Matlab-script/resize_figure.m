function resize_figure(scale, ratio, all)

	if nargin <1
		scale = 2;
	end

	if nargin < 2
		ratio = 0.618;
    end

    if nargin < 3
		all = 'all';
    end
    
	width = 3.5*scale;
	height = 3.5*scale*ratio;
    
    if strcmp(all, 'all')
        hf_all = findobj('Type', 'figure');
    else
        hf_all = [gcf];
    end
    
    for index = 1:length(hf_all)
        hf = hf_all(index);    
        % f = hf;
        % f.Units = 'inches';   % works only after 2014b

        po = 1;
        set(hf, 'Units', 'inches')
        set(hf, 'Position', [po po width height])
        set(hf,'PaperPositionMode','auto')
        set(hf,'PaperSize', [width height])


        % Only remove the white margin for single plots

        ha_all = findobj(hf,'type','axes');    % find all axes in the current figure   
        if (length(ha_all) == 1)
            ha = ha_all(1);
            set(ha, 'Position', get(ha, 'OuterPosition') - ...
            get(ha, 'TightInset') * [-1 0 1 0; 0 -1 0 1; 0 0 1 0; 0 0 0 1]);

            set(gca,'LooseInset',get(gca,'TightInset')); % remove white margin	
        end
        for index = 1:length(ha_all)
            ha = ha_all(index);
            set(ha,'LooseInset',get(ha,'TightInset')); % remove white margin
        end
    end
end
