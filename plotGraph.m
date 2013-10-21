function [count] = plotGraph(count,xTick,xLabel,yLabel)
% plotGraph is a function used by aminoGraph
% It takes a matrix input @count and makes a bar graph for each data set
% The xTicks are used to label each specific set of data. The number of
% ticks should correspond to the total number of data sets for proper use.
% The labels for the X and Y axis are obviously provided by xLabel and
% yLabel. Both inputs should be strings.

bar(count);
set(gca,'XTickLabel',xTick);
set(gca,'XTick',[1:length(xTick)]);
set(gca,'XLim',[0 length(xTick)+1]);
xlabel(xLabel);
ylabel(yLabel);
end
