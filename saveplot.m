if ( ~exist('nwplt') || nwplt.plotinit ~= 1)
    err = MException('nwplt:NotInitialized',['nwplt not intialized. \nPlease run initPlotFramework first.']);
    clear nwtmp
    throw(err);   
end
if (exist('k'))
    nwtmp.k = k; %save 
end

switch plottype
% huge plots
    case (nwstyle.huge_single_plot)
        set(gca,'Position',[0.1 0.095  .87 .85])        
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.huge_multiplot_2_withXLabel)
        subplot(2,1,1)
        nwtmp.size = .36;
        set(gca,'Position',[0.1 .57 .87 nwtmp.size])
        subplot(2,1,2);
        set(gca,'Position',[0.1 0.095 .87 nwtmp.size])
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
        align_Ylabels(gcf)
    case (nwstyle.huge_multiplot_2_withoutXLabel)
        if (max_y_val(gcf) > 9999)
            nwtmp.size = .39;
            subplot(2,1,1)
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.1 .55 .87 nwtmp.size])
            subplot(2,1,2)
            set(gca,'Position',[0.1 .095 .87 nwtmp.size])
        else
            nwtmp.size = .42;
            subplot(2,1,1)
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.1 .55 .87 nwtmp.size])
            subplot(2,1,2)
            set(gca,'Position',[0.1 .095 .87 nwtmp.size])
        end
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
        align_Ylabels(gcf)
    case (nwstyle.huge_multiplot_3_withXLabel)
        subplot(3,1,1)
        nwtmp.size = .215;
        set(gca,'Position',[0.1 0.73 .87 nwtmp.size])
        subplot(3,1,2);
        set(gca,'Position',[0.1 0.4125 .87 nwtmp.size])
        subplot(3,1,3);
        set(gca,'Position',[0.1 0.095 .87 nwtmp.size])
    
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.huge_multiplot_3_withoutXLabel)
        if (max_y_val(gcf) > 9999)
            subplot(3,1,1)
            nwtmp.size = .24;
            set(gca,'Position',[0.1 0.70 .87 nwtmp.size])
            set(gca,'XTickLabel','');
            xlabel('')
            subplot(3,1,2);
            set(gca,'Position',[0.1  0.3975 .87 nwtmp.size])
            set(gca,'XTickLabel','');
            xlabel('')           
            subplot(3,1,3);
            set(gca,'Position',[0.1 0.095 .87 nwtmp.size])
        else
            subplot(3,1,1)
            nwtmp.size = .27;
            set(gca,'Position',[0.1 0.71 .87 nwtmp.size])
            set(gca,'XTickLabel','');
            xlabel('')
            subplot(3,1,2);
            set(gca,'Position',[0.1 0.4025 .87 nwtmp.size])
            set(gca,'XTickLabel','');
            xlabel('')
            subplot(3,1,3);
            set(gca,'Position',[0.1 0.095 .87 nwtmp.size])
        end
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.huge_multiplot_4_withXLabel)
        subplot(4,1,1)
        nwtmp.size = .13
        set(gca,'Position',[0.1 .81 .87 nwtmp.size])
        subplot(4,1,2);
        set(gca,'Position',[0.1 0.57 .87 nwtmp.size])
        subplot(4,1,3);
        set(gca,'Position',[0.1 0.33 .87 nwtmp.size])
        subplot(4,1,4);
        set(gca,'Position',[0.1 0.095  .87 nwtmp.size])        
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
        align_Ylabels(gcf)
    case (nwstyle.huge_multiplot_4_withoutXLabel)
       
        if (max_y_val(gcf) > 9999)
            subplot(4,1,1);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.77 .87 .17])
            xlabel('')
            subplot(4,1,2);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.545 .87 .17])
            xlabel('')
            subplot(4,1,3);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.32 .87 .17])
            xlabel('')
            subplot(4,1,4);
            set(gca,'Position',[0.1 0.095  .87 .17])
        else 
            subplot(4,1,1);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.78 .87 .2])
            xlabel('')
            subplot(4,1,2);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.55 .87 .2])
            xlabel('')
            subplot(4,1,3);
            set(gca,'XTickLabel','');
            set(gca,'Position',[0.1 0.32 .87 .2])
            xlabel('')
            subplot(4,1,4);
            set(gca,'Position',[0.1 0.095  .87 .2])
        end
        set(gcf,'PaperPosition', [0 0 nwplt.width nwplt.height],'PaperSize', [nwplt.width nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
        align_Ylabels(gcf)


        
 
    %medium plots
    case (nwstyle.regular_single_plot)
        set(gca,'Position',[0.13  0.13  .82 .80])        
        set(gcf,'PaperPosition', [0 0 .75*nwplt.width .75*nwplt.height],'PaperSize', [.75*nwplt.width .75*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.regular_multiplot2_withXLabel)
        subplot(2,1,1)
        nwtmp.size = .33;
        set(gca,'Position',[0.14 .6 .82 nwtmp.size])
        subplot(2,1,2);
        set(gca,'Position',[0.14 0.14 .82 nwtmp.size])
        set(gcf,'PaperPosition', [0 0 .75*nwplt.width .75*nwplt.height],'PaperSize', [.75*nwplt.width .75*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%         align_Ylabels(gcf)
%TODO: fix this
    case (nwstyle.regular_multiplot2_withoutXLabel)
        if (max_y_val(gcf) > 9999)
            subplot(2,1,1)
            nwtmp.size = .36;
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 .56 .82 nwtmp.size])
            subplot(2,1,2);
            set(gca,'Position',[0.14 0.13 .82 nwtmp.size])
        else
            subplot(2,1,1)
            nwtmp.size = .4;
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 .57 .82 nwtmp.size])
            subplot(2,1,2);
            set(gca,'Position',[0.14 0.13 .82 nwtmp.size])
        end      
        set(gcf,'PaperPosition', [0 0 .75*nwplt.width .75*nwplt.height],'PaperSize', [.75*nwplt.width .75*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%         align_Ylabels(gcf)
%TODO: fix this
    case (nwstyle.regular_multiplot3_withXLabel)
        subplot(3,1,1)
        nwtmp.size = .16
        set(gca,'Position',[0.14 .75 .82 nwtmp.size])
        subplot(3,1,2);
        set(gca,'Position',[0.14 0.44 .82 nwtmp.size])
        subplot(3,1,3);
        set(gca,'Position',[0.14 0.13 .82 nwtmp.size])
        set(gcf,'PaperPosition', [0 0 .75*nwplt.width .75*nwplt.height],'PaperSize', [.75*nwplt.width .75*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%         align_Ylabels(gcf)
%TODO: fix this
    case (nwstyle.regular_multiplot3_withoutXLabel)
        if (max_y_val(gcf) > 9999)
            subplot(3,1,1)
            nwtmp.size = .21
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 .71 .82 nwtmp.size])
            subplot(3,1,2);
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 0.42 .82 nwtmp.size])
            subplot(3,1,3);
            set(gca,'Position',[0.14 0.13 .82 nwtmp.size])

        else
            subplot(3,1,1)
            nwtmp.size = .25
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 .71 .82 nwtmp.size])
            subplot(3,1,2);
            set(gca,'XTickLabel','');
            xlabel('');
            set(gca,'Position',[0.14 0.42 .82 nwtmp.size])
            subplot(3,1,3);
            set(gca,'Position',[0.14 0.13 .82 nwtmp.size])            
        end
        set(gcf,'PaperPosition', [0 0 .75*nwplt.width .75*nwplt.height],'PaperSize', [.75*nwplt.width .75*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%         align_Ylabels(gcf)
%TODO: fix this
    case (nwstyle.slim_single_plot)
           set(gca,'Position',[0.21 0.17  .75 .73])        
           set(gcf,'PaperPosition', [0 0 .47*nwplt.width .55*nwplt.height],'PaperSize', [.47*nwplt.width .55*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.flat_single_plot)
           set(gca,'Position',[0.1 0.16 .87 .75])            
           set(gcf,'PaperPosition', [0 0 nwplt.width .6*nwplt.height],'PaperSize', [nwplt.width .6*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
    case (nwstyle.flat_multiplot2_withXLabel)
           subplot(2,1,1)
           nwtmp.size = .28;
           set(gca,'Position',[0.1 .62 .87 nwtmp.size])
           subplot(2,1,2);
           set(gca,'Position',[0.1 0.16 .87 nwtmp.size])
           set(gcf,'PaperPosition', [0 0 nwplt.width .6*nwplt.height],'PaperSize', [nwplt.width .6*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%            align_Ylabels(gcf)
    case (nwstyle.flat_multiplot2_withoutXLabel)
           if (max_y_val(gcf) > 9999)
               subplot(2,1,1)
               nwtmp.size = .32;
               set(gca,'XTickLabel','');
               xlabel('');
               set(gca,'Position',[0.1 .58 .87 nwtmp.size])
               subplot(2,1,2);
               set(gca,'Position',[0.1 0.16 .87 nwtmp.size])
           else
               subplot(2,1,1)
               nwtmp.size = .36;
               set(gca,'XTickLabel','');
               xlabel('');
               set(gca,'Position',[0.1 .58 .87 nwtmp.size])
               subplot(2,1,2);
               set(gca,'Position',[0.1 0.16 .87 nwtmp.size])
           end
           set(gcf,'PaperPosition', [0 0 nwplt.width .6*nwplt.height],'PaperSize', [nwplt.width .6*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
%            align_Ylabels(gcf)
    case (nwstyle.ultraflat_single_plot)
           set(gca,'Position',[0.1 0.27 .87 .58])            
           set(gcf,'PaperPosition', [0 0 nwplt.width .35*nwplt.height],'PaperSize', [nwplt.width .35*nwplt.height]); %Position plot at left hand corner, Set the paper to have width and height
        
    otherwise
        err = MException('nwplt:NotImplemented',['plottype ' num2str(plottype) ' is unknown']);
        clear nwtmp
        throw(err);
end

saveas(gcf, [figure_dir '/' plotname] , nwplt.filetype) %Save figure
if(exist('nwtmp.k'))
    k=nwtmp.k; %restore
end
clear nwtmp


