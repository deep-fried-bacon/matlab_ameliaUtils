%% DOCUMENT TITLE
% INTRODUCTORY TEXT
% takes a 2d cell array containing multiple tables seperated by emptylines,
% empty lines are lines that contain only "", NaN (becomes a missing string), or missing strings
%%
% takes a 2d cell array of strings
% and returns a 2xN cell array of doubles
% output(t,1) = first row of table(t)
% output(t,2) = end last row of table(t)
% where t is 1 - # of tables 
% 

function output = whereChunks(t)

on = false;
output = cell(1,2);
count = 1;
for i = 1:size(t,1)
    %disp(rowIsEmpty(t(i,:)))
    %fprintf('%d ', on)
    if ~on
        %fprintf('%s ', "not on")
        %fprintf('%d ', rowIsEmpty(t(i,:)))

        if ~rowIsEmpty(t(i,:))
            output{count,1} = i;
            on = true;
        end
    else
        %fprintf('%s ', "on")
        %fprintf('%d ', rowIsEmpty(t(i,:)))
        if rowIsEmpty(t(i,:))
            output{count,2} = i - 1;
            count = count + 1;
            on = false;
        end
    end   
       
end
%disp(output)
end