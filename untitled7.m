colNames = {'1','2','3','4'};
rowNames = {'a','b','c','d','e','f'};
boop = cell(6,4);
for r = 1:size(rowNames,2)
    for c = 1:size(colNames,2)
        boop{r,c} = strcat(rowNames{r},colNames{c});
    end

end

