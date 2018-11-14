%% nwPlot plotting framework for matlab
% v 0.01alpha-23-08-2013 Nicolas Werner
% License: GNU GPL-V3 
%
% align_Ylabels.m: BSD by Denis Gilbert
%
% feel free to contribute
% 
% Contact:
%   post@nicolas-werner.de
%
% known issues:
%   - centering of ylabels messed up (matlab- or alignx_ylabels-bug(?))
%
% Usage:
% 1) configure using initPlotFramework
% 2) run initPlotFramework
% 3) set figure_dir
% 4) specify figure type:
%       plottype =  nwstyle.regular_multiplot2_withoutXLabel;
% 5) plot your figure
% 6) run saveplot
%
% Limitations:
%   - minimum "huge" size 16x10cm (so far)
%   - no multiline labels
%   - values for aligning hardcoded via trial & error

%% Modify according to preferences

nwplt.lw = 1.5;
nwplt.font = 'Times';
nwplt.fontsize = 10;
nwplt.interpreter = 'latex';
nwplt.grid = 'on';
nwplt.filetype = 'pdf';
% width and height of "huge" plots. central, slim and flat are resized accordingly
nwplt.width = 16;
nwplt.height = 10.3;

%% Setting the default values
set(0,'DefaultTextInterpreter',nwplt.interpreter, 'DefaultAxesFontName', nwplt.font, 'DefaultTextFontName',nwplt.font,'DefaultAxesFontSize',nwplt.fontsize,'DefaultTextFontSize',nwplt.fontsize)
set(0,'DefaultLineLineWidth',nwplt.lw)
set(0,'DefaultAxesXGrid','on','DefaultAxesYGrid',nwplt.grid)
set(0, 'DefaultFigurePaperUnits', 'centimeters');


%% declare style definitions
%single plots
nwstyle.huge_single_plot = 11;
nwstyle.regular_single_plot = 12;
nwstyle.slim_single_plot = 13;
nwstyle.flat_single_plot = 14;
nwstyle.ultraflat_single_plot = 15;
%multiplots 2 row
nwstyle.huge_multiplot_2_withXLabel = 21;
nwstyle.huge_multiplot_2_withoutXLabel = 22;
nwstyle.regular_multiplot_2_withXLabel = 23;
nwstyle.regular_multiplot_2_withoutXLabel = 24;
nwstyle.flat_multiplot_2_withXLabel = 25;
nwstyle.flat_multiplot_2_withoutXLabel = 26;

%multiplots 3 row
nwstyle.huge_multiplot_3_withXLabel = 31;
nwstyle.huge_multiplot_3_withoutXLabel = 32;
nwstyle.regular_multiplot_3_withXLabel = 33;
nwstyle.regular_multiplot_3_withoutXLabel = 34;

%multiplots 4 row
nwstyle.huge_multiplot_4_withXLabel = 41;
nwstyle.huge_multiplot_4_withoutXLabel = 42;



%% set the init-flag
nwplt.plotinit = 1;
