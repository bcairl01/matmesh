clear;
clc;

colormap('Winter')

M = meshread('wolf0.off');
G = mesh2graph(M,2);
D = dijkstras(G,500);
C = scale2color(D);

clf
meshview(M,'FacevertexCData',C,'FaceColor','interp','EdgeColor','none','FaceAlpha',0.8);
cleanfig(gcf)
shg