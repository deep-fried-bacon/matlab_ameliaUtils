
%COL_NAMES = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
% COL_NAMES_2 = {'2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'};
% ROW_NAMES = {'B','C','D','E','F','G','H','I','J','K','L','M','N','O','P'};

COL_NAMES = {"2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
ROW_NAMES = {"B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"};





file = '/Users/baylieslab/Documents/Amelia/EPL/2018-03-18.csv';
plateMapC = table2cell(readtable(file,'TextType','string','Delimiter',','));
 



[rCount, cCount] = size(plateMapC);
started = false;
col = 1;
row = 1;
notEmptyRows = cell(30,1);

e=1;
for r = 1:rCount
    empty = true;
    for c = 1:cCount
        temp = string(plateMapC{r,c});
        if temp ~= "" &&  ~ismissing(temp)
            empty = false;
            notEmptyRows{e} = r;
            e = e + 1;
            break
        end
    end
end

notEmptyRows










