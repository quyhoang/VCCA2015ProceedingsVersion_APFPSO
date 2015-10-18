function obsGenerator()
% Generate obstacles and shadow, and targets
global staticObs additionalObs 

staticObs = [-30 -20 30; -30 30 20];
% shadow = [-20 -10; -10 -25];

y1a = linspace(-9,-1,9); 
x1a = -20*ones(size(y1a));

x2a = linspace(-20,-15,6); 
y2a = zeros(size(x2a));

y3a = y1a;
x3a = -15*ones(size(y1a));

x4a = x2a;
y4a = -10*ones(size(x4a));

addObs1 = [x1a x2a x3a x4a; y1a y2a y3a y4a];

y1b = linspace(-24,-21,4);
x1b = -10*ones(size(y1b));

x2b = linspace(-10,0,11);
y2b = -20*ones(size(x2b));

y3b = y1b;
x3b = zeros(size(y3b));

x4b = x2b;
y4b = -25*ones(size(x4b));

addObs2 = [x1b x2b x3b x4b; y1b y2b y3b y4b];

x1c = linspace(10,15,6);
y1c = linspace(0,8.66,6);
x2c = linspace(16,20,5);
y2c = linspace(y1c(5),0,5);
x3c = linspace(11,19,9);
y3c = zeros(size(x3c));

addObs3 = [x1c x2c x3c; y1c y2c y3c];

additionalObs = [addObs1 addObs2 addObs3];

end

