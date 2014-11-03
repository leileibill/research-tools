set(gca,'xcolor',[0.75 0.75 0.75],'ycolor',[0.75 0.75 0.75])
set(gca,'MinorGridLineStyle','-')
grid on
c=copyobj(gca,gcf);
set(c,'color','none','xcolor','k', ...
'xgrid','off','ycolor','k', ...
'ygrid','off');