% epic scatterplot - MSL vs. relative clauses 

S = xlsread("stylometry_data_epic_updated.xlsx", "Values");

mdl = fitlm(S(1:62,1), S(1:62,2));
h = plot(mdl)
delete(h([1 3 4])) 
title('')
set(h(2), 'Color', 'k');

hold on

plot(S(1:12,1), S(1:12,2),'k+', S(13:27,1), S(13:27,2),'ko', S(28:62,1), S(28:62,2),'k+')
axis square
lgd = legend({'Linear fit', 'Other narrative epic', 'Metamorphoses'}, 'Location','northwest')
lgd.Direction = 'reverse';
xlabel('Mean sentence length (words)', 'FontSize',16)
ylabel('Fraction of sentences with relative clause', 'FontSize', 16)
xlim([12.5, 27.5])
ylim([0 0.5])
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
box off

