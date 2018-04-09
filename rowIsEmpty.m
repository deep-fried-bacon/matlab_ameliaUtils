function bool = rowIsEmpty(row)
%len = size(row);
for i = 1:size(row,2)
    %row{i}
    item = string(row{1,i});
    if item ~= "" && ~ismissing(item)
        bool = false;
        return
        %disp('nah')
    end
end
bool = true;
end


        