%histogram(male_q,20)
%hold on
%histogram(female_q,30)

%axis square 
%box off

% load data

S = xlsread("interrogatives_violin_plot_updated.xlsx", "Values");
[~,labels] = xlsread("interrogatives_violin_plot_updated.xlsx", "Labels");

C2 = [labels(1), labels(40)];

% interrogatives

Origin = cellstr(labels);
figure
vs = violinplot(S(:,1), Origin, 'ViolinColor', [0.5 0.5 0.5], 'GroupOrder', C2);
set(gca, 'FontWeight','normal', 'FontAngle', 'normal')
ylabel('Frequency of direct interrogatives', 'FontSize', 12, 'FontAngle', 'normal');
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
axis square
box off


