function export_figure(name)

if nargin <1
    name =  'matlab_figure';
end

% print('-dpng','-r600', strcat(name,'.png'));   % exort as png
print('-depsc','-loose',strcat(name,'.eps'));    % export as eps
% print('-dpdf', '-painters',strcat(name,'.pdf'));    % export as pdf

end


