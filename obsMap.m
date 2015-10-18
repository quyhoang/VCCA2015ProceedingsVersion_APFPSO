function obsMap()

set(0,'DefaultFigurePosition', [299, 0, 768, 768]); % make every graph fit my screen (1366*768)

staticObs = [-30 -20 30; -30 30 20];
shadow = [-20 -10; -10 -25];


rectangle('Position',[shadow(1,1),shadow(2,1),5,10],'FaceColor','c'); % shadow
hold on;
rectangle('Position',[shadow(1,2),shadow(2,2),10,5],'FaceColor','c'); % shadow
hold on;

x = [10 15 20];
y = [0 8.66 0];
fill(x,y,'g');

scatter(staticObs(1,:),staticObs(2,:),1000,'m','filled');

axis([-51 51 -51 51]); hold on;

end


