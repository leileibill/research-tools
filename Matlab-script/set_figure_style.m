function set_figure_style(scale)

    if nargin <1
        scale = 2;
    end
    
    % Axis tick label
    set(gca,'FontSize',8*scale) 
    set(gca,'FontName','TimesNewRoman','TickLabelInterpreter','latex') % axis font


    % legend 
    l = findobj(gcf,'Tag','legend');
    set(l,'FontSize',8*scale,'FontName','TimesNewRoman','Interpreter','latex')

    % All other text on figure
    set(findall(gcf,'type','text'),'FontName','TimesNewRoman','Interpreter','latex')	% all fonts in the figure
    set(findall(gcf,'type','text'),'FontSize',9*scale)

    % Axis title label
    h = gca;
    set(h.YLabel,'FontSize',10*scale,'Interpreter','latex');
    set(h.XLabel,'FontSize',10*scale,'Interpreter','latex');

    % set grid style
    set(gca,'xcolor',[0.75 0.75 0.75],'ycolor',[0.75 0.75 0.75])
    set(gca,'GridLineStyle','-')
    % set(gca,'MinorGridLineStyle','-')
    % set(gca,'MajorGridLineStyle','-')
    grid on
    % c=copyobj(gca,gcf);
    set(gca,'color','none','xcolor','k','ycolor','k');
    set(gcf,'color','w');
    box on
end

