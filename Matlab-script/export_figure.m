function export_figure(name)

if nargin <1
    name =  'matlab_figure';
end

print('-dpng','-r600', strcat(name,'.png'));   % exort as png
print('-depsc', strcat(name,'.eps'));    % export as eps

end


