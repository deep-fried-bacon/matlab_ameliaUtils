% for personal reference
% cellArr(r,c), cellArr(-y,x)
%
% size(x,1) = colCount, 
% size(x,2) = rowCount


classdef labeledCellArr 
    properties
        cellArr         
        colNames
        rowNames
            
    end
    
    methods
        
        function obj = labeledCellArr(cellArr,colNames,rowNames)
            width = size(cellArr,2);
            colCount = size(colNames,2);
            if width ~= colCount
%                 ME = MException('MYFUN:BadIndex','issue');
%                 throw(ME);
                ME = MException('LCAconstructor:InvalidInput',...
                    'Width of cellArr(%d) must be equal to size of colNames(%d)',width,colCount);
                throw(ME);
                return
            end
            if ~iscellstr(colNames)
                ME = MException('LCAconstructor:InvalidInput',...
                    'colNames must be a cellstr (cell array of char vectors)');
                throw(ME);
                return
            end
            
            height = size(cellArr,1);
            rowCount = size(rowNames,2);
            if height ~= rowCount
                ME = MException('LCAconstructor:InvalidInput',...
                    'Height of cellArr(%d) not equal to Number of row names(%d)',height, rowCount);
                throw(ME);
                return
            end
            if ~iscellstr(rowNames)
                ME = MException('LCAconstructor:InvalidInput',...
                    'rowNames must be a cellstr (cell array of char vectors)');
                throw(ME);
                return
            end
            
            obj.cellArr = cellArr;
            obj.colNames = colNames;
            obj.rowNames = rowNames;
        end
            
            
            
            
        function b = subsref(obj,s)
            %isnumeric(
            row = s.subs{1};
            col = s.subs{2};

            if isnumeric(row) 
                r = row;
            elseif ischar(row)
                r = find(cell2mat(obj.rowNames) == row);
            else
                ME = MException('LCAsubsref:InvalidInput',...
                    'Subscript indices must either be real numerics or chars.');
                throw(ME);
                return
            end
            
            if isnumeric(col)
                c = col;
            elseif ischar(col)
                c = find(cell2mat(obj.colNames) == col);
            else
                ME = MException('LCAsubsref:InvalidInput',...
                    'Subscript indices must either be real numerics or chars.');
                throw(ME);
                return
            end
            b = obj.cellArr(r,c);
        end
        
    end
    
end


            
            
