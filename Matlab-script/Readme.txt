********************************
This folder contains Matlab scripts that are useful tools for preparing publications.
********************************
set_figure_style(scale): 
	set the style for figures. Use latex font and interpreter. Use grey solid line for major grid and grey dotted line for minor grid. Font size is 8*scale for all texts. Default: scale = 2
resize_figure(scale, ratio): 
	resize the current Matlab figure, width = 2.5 in * scale, and height = width*ratio. Default: scale = 2, ratio = 0.6
export_figure('figure_name'): 
	export the current Matlab figure to both eps and png format. 
distinguishable_colors(numer_of_color): 
	return colors that are easily distinguishable. Downloaded from Matlab Central.

********************************
Example usage:

After plotting in Matlab, add the following,
set_figure_style();
resize_figure();
export_figure('figure_name');

********************************
Major change log:

set_figure_style now works for figure with subplots.

********************************
Known issues:
export_figure:	
	.eps figure exported by the function has a white background that is larger than the figure for figures with subplots.
	.png figure exported by the function has a white background that is larger than the figure
set_figure_style:	
	Label text should be in size 9, but the change all text font size will change label text of the previous subplots in subplots
	Add linewidth in the future
	Maybe should change to default values as a pre-processing, instead of as post-processing.
