% set font
set(gca,'FontName','TimesNewRoman') 
set(findall(gcf,'type','text'),'FontName','TimesNewRoman')

% set grid style
set(gca,'xcolor',[0.75 0.75 0.75],'ycolor',[0.75 0.75 0.75])
set(gca,'GridLineStyle','-')
set(gca,'MinorGridLineStyle','-')
% set(gca,'MajorGridLineStyle','-')
grid on
c=copyobj(gca,gcf);
set(c,'color','none','xcolor','k', ...
'xgrid','off','ycolor','k', ...
'ygrid','off');