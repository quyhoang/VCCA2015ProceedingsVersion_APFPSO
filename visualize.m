function visualize(objectiveFunction)

global maxStep commuRange sensingRange dwLimit_1 upLimit_1 dwLimit_2 upLimit_2 ...
    BestFitnessEver step swarmX swarmY staticObs lambda2

[xx,yy,zz] = objFun(objectiveFunction);
WAIT = .005;
figure;
% drawContour(xx,yy,zz);

for step = 1:maxStep
    clf; % clear figure
  
    if step == maxStep
        drawContour(xx,yy,zz,step);
        hold on;
    end
    
    % Additional obstacles
    shadow = [-20 -10; -10 -25];
    rectangle('Position',[shadow(1,1),shadow(2,1),5,10],'FaceColor','c'); % shadow
    hold on;
    rectangle('Position',[shadow(1,2),shadow(2,2),10,5],'FaceColor','c'); % shadow
    hold on;
    x = [10 15 20];
    y = [0 8.66 0];
    fill(x,y,'g');
    
    scatter(staticObs(1,:),staticObs(2,:),1000,'m','filled');
    xlabel('x coordinator','FontSize',16); ylabel('y coordinator','FontSize',16)
    str = ['Step: ',num2str(step),'\it \color[rgb]{0.2,0.5,0.5} Best Value = ', num2str(BestFitnessEver(step))];
    title(str,'FontSize',18);
    set(gca,'fontsize',16); hold on;
    
    % %   clf;
    %     swarmStep = [swarmX(step,[1 8 10]);swarmY(step,[1 8 10])]';
    %     viscircles(swarmStep,[5;5;5],'EdgeColor','g','LineWidth',0.1); % draw communication range or APF repulsive circle
    %     scatter(swarmX(step,10),swarmY(step,10),30,[1 0 0],'filled');
    %     scatter(swarmX(step,1),swarmY(step,1),30,[1 0 0],'filled');
    %     scatter(swarmX(step,8),swarmY(step,8),30,[1 0 0],'filled');
    %     pause(WAIT);
    %     if lambda2(step) > 1
    %         pause;
    %     end
    
    swarmStep = [swarmX(step,:);swarmY(step,:)]';
    viscircles(swarmStep,commuRange*sensingRange,'EdgeColor','g','LineWidth',0.1); % draw communication range or APF repulsive circle
    
    scatter(swarmX(step,:),swarmY(step,:),110,[0 0 1],'filled'); % visual alternation of the above line, draw all the swarm with each particle's size
    axis([dwLimit_1-1 upLimit_1+1 dwLimit_2-1 upLimit_2+1]); hold on;  
    pause(WAIT);
end
end

