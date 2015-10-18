% figure;
% line([1,2], [3, 4], 'Color', 'r');

t = (1/16:1/8:1)'*2*pi;
x = cos(t);
y = sin(t);
% Create a red octagon using the fill function.

fill(x,y,'r')
axis square