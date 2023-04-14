function [G_E_Pro,G_F_Pro,r,a,b] = regerssion_gini(pop,EP_inc,FP_inc_re)
%%
G_E_Pro = zeros(31,1);
G_F_Pro = zeros(31,1);
for i = 1:31
    G_E_Pro(i) = GiniCoeff_plot(pop(i,:),EP_inc(i,:),0);
end
for i = 1:31
    G_F_Pro(i) = GiniCoeff_plot(pop(i,:),FP_inc_re(i,:),0);
end
[a,b,r,~,~]=line_fit_weighted_resid(G_F_Pro,G_E_Pro);
color = {[0.85, 0.33, 0.10],[0.93, 0.69, 0.13],[0.00, 0.45, 0.74],[1,187/255,0],[0.00,0.45,0.74],[0.85,0.33,0.10],[0.93,0.69,0.13],[0.49,0.18,0.56]};
c = parula(7);
g=scatter(G_F_Pro(1:5),G_E_Pro(1:5));
set(g,'MarkerFaceColor',c(1,:))
set(g,'MarkerEdgeColor',c(1,:))
%     set(g,'Marker',marker{1})
g=scatter(G_F_Pro(6:8),G_E_Pro(6:8));
set(g,'MarkerFaceColor',c(2,:))
set(g,'MarkerEdgeColor',c(2,:))
 %   set(g,'Marker',marker{2})
g=scatter(G_F_Pro(9:15),G_E_Pro(9:15));
set(g,'MarkerFaceColor',c(3,:))
set(g,'MarkerEdgeColor',c(3,:))
%    set(g,'Marker',marker{3})
g=scatter(G_F_Pro(16:18),G_E_Pro(16:18));
set(g,'MarkerFaceColor',c(4,:))
set(g,'MarkerEdgeColor',c(4,:))
 %   set(g,'Marker',marker{4})
g=scatter(G_F_Pro(19:21),G_E_Pro(19:21));
set(g,'MarkerFaceColor',c(5,:))
set(g,'MarkerEdgeColor',c(5,:))
  %  set(g,'Marker',marker{5})
g=scatter(G_F_Pro(22:26),G_E_Pro(22:26));
set(g,'MarkerFaceColor',c(6,:))
set(g,'MarkerEdgeColor',c(6,:))
  %  set(g,'Marker',marker{7})
g=scatter(G_F_Pro(27:31),G_E_Pro(27:31));
set(g,'MarkerFaceColor',c(7,:))
set(g,'MarkerEdgeColor',c(7,:))
  %  set(g,'Marker',marker{7})
line([0.18,0.5],[0.18,0.5],'linestyle','--','color','b')
xlim([0.18,0.5])
ylim([0.18,0.5])
legend('Best fit','upper','lower','North China','Northeast China','East China','Central China','South China','Southwest China','Northwest China','indifference')
