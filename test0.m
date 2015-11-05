clear;
clc;

M = meshread('wolf0.off');
G = mesh2graph(M,2);
D = dijkstras(G,10);
C = scale2color(D);

clf
meshview(M,'FacevertexCData',C,'FaceColor','interp','EdgeColor','interp','FaceAlpha',0.5,'EdgeAlpha',0.25);
cleanfig(gcf)
shg