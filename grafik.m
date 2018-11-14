clc
clear all
close all

initPlotFramework
figure_dir = '../doku/fig'

% example plot file

% plotname = 'test'
plottype = nwstyle.regular_multiplot_3_withoutXLabel;
plotname = 'regular_multiplot3_withoutXLabel_mit_exp';

x=0:.1:10;
y1=sin(x);
y2=cos(x);

% 1 plot
if (ismember(plottype,[nwstyle.ultraflat_single_plot nwstyle.huge_single_plot nwstyle.regular_single_plot nwstyle.slim_single_plot nwstyle.flat_single_plot ] ))
    figure()
    plot(x,y1*1000,'-',x,y2*10000,'r-x')
    ylabel('$V_{TAS} [\frac{m}{s}]$')
    xlabel('t\,[s]')
    legend('Irgendwas',sprintf('Irgendwas \n\\"Ahnliches'),'Location','North')
end


%2 plot
if (ismember(plottype,[nwstyle.flat_multiplot_2_withoutXLabel nwstyle.flat_multiplot_2_withXLabel nwstyle.huge_multiplot_2_withoutXLabel nwstyle.huge_multiplot_2_withXLabel nwstyle.regular_multiplot_2_withXLabel nwstyle.regular_multiplot_2_withoutXLabel]))
    s = 2;
    figure()

    h(1)=subplot(s,1,1);
    plot(x,y1*100)
    xlim([min(x) max(x)])
    ylabel('$V_{TAS} [\frac{m}{s}]$')
    xlabel('t\,[s]')
    legend('Aufzeichnung','Location','NorthWest')


    h(2)=subplot(s,1,2);
    plot(x,y2*1000)
    xlim([0 10])
    xlabel('t\,[s]')
    ylabel('$\Theta [^\circ]$')

    linkaxes(h,'x');
end


% 3 plot
if (ismember(plottype,[nwstyle.huge_multiplot_3_withoutXLabel nwstyle.huge_multiplot_3_withXLabel nwstyle.regular_multiplot_3_withXLabel nwstyle.regular_multiplot_3_withoutXLabel]))
    s = 3;
    figure()

    h(1)=subplot(s,1,1);
    plot(x,y1*1000)
    xlim([min(x) max(x)])
    ylabel('$V_{TAS} [\frac{m}{s}]$')
    xlabel('t\,[s]')
    legend('Aufzeichnung','Location','NorthWest')


    h(2)=subplot(s,1,2);
    plot(x,y2*10000)
    xlim([0 10])
    xlabel('t\,[s]')
    ylabel('$\Theta [^\circ]$')

    h(3)=subplot(s,1,3);
    plot(x,y2*1000)
    xlim([0 10])
    xlabel('t\,[s]')
    ylabel('$\Theta [^\circ]$')

    linkaxes(h,'x');
end


% 4 plot
if (plottype == nwstyle.huge_multiplot_4_withoutXLabel || plottype == nwstyle.huge_multiplot_4_withXLabel)
    s = 4;
    figure()


    h(1)=subplot(s,1,1);
    plot(x,y1*1000)
    xlim([min(x) max(x)])
    ylabel('$V_{TAS} [\frac{m}{s}]$')
    xlabel('t\,[s]')
    legend('Aufzeichnung','Location','NorthWest')


    h(2)=subplot(s,1,2);
    plot(x,y2)
    xlim([0 10])
    xlabel('t\,[s]')
    ylabel('$\Theta [^\circ]$')


    h(3)=subplot(s,1,3);
    plot(x,y1*1090)
    xlim([0 10])
    xlabel('Gurken in Abh\"angigkeit der Zeit')
    ylabel('$V_{TAS} [\frac{m}{s}]$')
    legend('Aufzeichnung','Location','SouthEast')

    h(4)=subplot(s,1,4);
    plot(x,y2*10)
    xlim([0 10])
    % ylim([-5 20])
    xlabel('$t\,[s]$')%sprintf('Fooo mit $\\eta_n \\approx \\pi$ \n(ISA-Normatmosph\\"are)'))
    ylabel('$\Theta [^\circ]$')

    linkaxes(h,'x');
end
    
    
saveplot


