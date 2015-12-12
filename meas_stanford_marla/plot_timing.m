%
%  simple script used to plot the timing curves
%

crtValst1 = crtVals; hy1 = hy; hx1 = hx; vals1 = vals;
save('plot_timing.mat', 'crtValst1','hy1','hx1','vals1');
crtValst2 = crtVals; hy2 = hy; hx2 = hx; vals2 = vals;
save('plot_timing.mat', 'crtValst2','hy2','hx2','vals2','-append');

%%
% to use if the the values are already in plot_timing.mat
%

plot(hx1,'.');
plot(hx2,'.');
hx2Norm = mat2gray(hx2); vals2Norm = mat2gray(vals2);
hx1Norm = mat2gray(hx1); vals1Norm = mat2gray(vals1);
figure;
plot(hy1(283:410)*50e-12,hx1Norm(283:410),'.k');
hold on;
plot(hy2(388:511)*50e-12,hx2Norm(388:511),'.k');
plot(hy1*50e-12,vals1Norm,'b');
plot(hy2*50e-12,vals2Norm,'r');
xlim([-2e-9 0.5e-9]);

tDiff = (hy2(find(hx2Norm == 1)) - hy1(find(hx1Norm == 1)))*50e-12