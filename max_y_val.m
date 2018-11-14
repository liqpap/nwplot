function maxYAxis=max_y_val(fighdl)
        allAxes = findall(fighdl,'type','axes') ;
        allLegends = findobj(fighdl,'Type','axes','Tag','legend');
        legInd = [];
        
        for k = 1:length(allAxes)
            if ~isempty(find(allAxes(k) == allLegends))
                legInd = [legInd k];
            end
        end
        allAxes(legInd) = [];
        maxYAxis=0;
        for k=allAxes'
               maxYAxis = max([max(abs(get(k,'Ylim')))  maxYAxis]);
        end
end