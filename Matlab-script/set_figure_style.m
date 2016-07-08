% Axis tick label
set(gca,'FontSize',16) 
set(gca,'FontName','TimesNewRoman','TickLabelInterpreter','latex') % axis font


% legend 
l = findobj(gcf,'Tag','legend');
set(l,'FontSize',18,'FontName','TimesNewRoman','Interpreter','latex')

% All other text on figure
set(findall(gcf,'type','text'),'FontName','TimesNewRoman','Interpreter','latex')	% all fonts in the figure
set(findall(gcf,'type','text'),'FontSize',18)

% Axis title label
h = gca;
set(h.YLabel,'FontSize',20,'Interpreter','latex');
set(h.XLabel,'FontSize',20,'Interpreter','latex');

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

