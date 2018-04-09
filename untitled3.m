
x = linspace(1,10)
y = double(size(x,2))
for i = 1:size(x,2)
    y(i) = x(i) * x(i)
end
plot(x,y)
pbaspect([1 10 1])
