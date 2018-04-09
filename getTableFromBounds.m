function t = getTableFromBounds(cellArr,bounds)
    subCellArr = cellArr(bounds{1}+1:bounds{2},2:end);
    varNames = cellstr(cellArr(bounds{1},2:end));
    
    
    
    %t = cell2table(subCellArr,...
     %   'VariableNames', cellArr(bounds{1},2:end),... 
      %  'RowNames', cellArr(bounds{1}+1:bounds{2},1));
    disp("");  
end


