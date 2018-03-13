function set_figure_style(scale, all)

    if nargin < 1
        scale = 2;
    end
    if nargin < 2
        all = '';
    end
    
    if strcmp(all, 'all')
        hf_all = findobj('Type', 'figure');
    else
        hf_all = [gcf];
    end
    
    for index = 1:length(hf_all)
        hf = hf_all(index);
        % All other text on figure
        set(findall(hf,'type','text'),'FontName','TimesNewRoman','Interpreter','latex')	% all fonts in the figure
        set(findall(hf,'type','text'),'FontSize',8*scale)   

        % legend 
        l = findobj(hf,'Tag','legend');
        set(l,'FontSize',8*scale,'FontName','TimesNewRoman','Interpreter','latex')    

        % Change line width
    %     h = findobj(hf,'type','line');
    %     set(h,'linewidth',0.75*scale);


        ha_all = findobj(hf,'type','axes');    % find all axes in the current figure   
        for index = 1:length(ha_all)
            ha = ha_all(index);
            % Axis tick label
            set(ha,'FontSize',8*scale) 
            set(ha,'FontName','TimesNewRoman','TickLabelInterpreter','latex') % axis font

            % Axis title label
            set(ha.YLabel,'FontSize',9*scale,'Interpreter','latex');
            set(ha.XLabel,'FontSize',9*scale,'Interpreter','latex');

            % set grid style
            set(ha,'xcolor',[0.75 0.75 0.75],'ycolor',[0.75 0.75 0.75])
            set(ha,'GridLineStyle','-')
            set(ha,'MinorGridLineStyle','-')
            % set(gca,'MajorGridLineStyle','-')
            grid(ha,'on')
            % c=copyobj(gca,hf);
            set(ha,'color','none','xcolor','k','ycolor','k');
            set(hf,'color','w');
            box on
        end
    end
end

