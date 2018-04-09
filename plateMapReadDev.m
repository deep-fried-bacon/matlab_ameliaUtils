myFile = '/Users/baylieslab/Documents/Amelia/EPL/2018-03-18.csv';
% plateMapC = table2cell(readtable(myFile,'TextType','string','Delimiter',',','ReadVariableNames',false));
plateMapC = csv2cell(myFile,'fromfile');

tableBounds = whereChunks2(plateMapC);

getTableFromBounds(plateMapC,tableBounds(1,:));



function t = getTableFromBounds(cellArr,bounds)
    subCellArr = cellArr(bounds{1}+1:bounds{2},2:end);
    varNames = cellstr(cellArr(bounds{1},2:end));
    rowNames = cellstr(cellArr(bounds{1}+1:bounds{2},1));
    t = cell2table(subCellArr,...
        'VariableNames',varNames,...
        'RowNames',rowNames);
    
    
    %t = cell2table(subCellArr,...
     %   'VariableNames', cellArr(bounds{1},2:end),... 
      %  'RowNames', cellArr(bounds{1}+1:bounds{2},1));
    %disp("");  
end
