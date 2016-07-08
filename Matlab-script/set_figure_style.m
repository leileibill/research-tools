% set font
set(gca,'FontName','TimesNewRoman','TickLabelInterpreter','latex') % axis font
set(findall(gcf,'type','text'),'FontName','TimesNewRoman','Interpreter','latex')	% all fonts in the figure


% set font size
set(gca,'FontSize',16) 
set(findall(gcf,'type','text'),'FontSize',18)


% set grid style
set(gca,'xcolor',[0.75 0.75 0.75],'ycolor',[0.75 0.75 0.75])
set(gca,'GridLineStyle','-')
% set(gca,'MinorGridLineStyle','-')
% set(gca,'MajorGridLineStyle','-')
grid on
% c=copyobj(gca,gcf);
set(gca,'color','none','xcolor','k','ycolor','k');
set(gcf,'color','w');