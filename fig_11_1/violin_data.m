% load data

S = xlsread("epic_violin_data_updated.xlsx", "Values");
[~,labels] = xlsread("epic_violin_data_updated.xlsx", "Labels");

C5 = [labels(1), labels(55), labels(28), labels(13), labels(38)]

% mean sentence length

Origin = cellstr(labels);
figure
vs = violinplot(S(:,1), Origin, 'ViolinColor', [0.5 0.5 0.5], 'GroupOrder', C5);
set(gca, 'FontWeight','normal', 'FontAngle', 'normal')
ylabel('Mean sentence length (words)', 'FontSize', 12, 'FontAngle', 'normal');
ylim([12.5, 27.5])
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
axis square
box off
