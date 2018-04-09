function bool = rowAlmostEmpty(row)
%len = size(row);
count = 0;
for i = 1:size(row,2)
    %row{i}
    item = string(row{1,i});
    if item ~= "" && ~ismissing(item)
        if count > 2 
            bool = false;
            return
        else
            count = count + 1;
        end    
    end
end
bool = true;



        