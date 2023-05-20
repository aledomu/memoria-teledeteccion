loadLibs();

img = imread("../img/r.png");

[imgCorte, m, M] = corte(0.01, img);

disp([ "m = ", num2str(m), "; M = ", num2str(M) ]);

imwrite(imgCorte, "../img/2/imagen_corte_0.01.png");

H = histo(imgCorte);

h = bar(H);
axis([0 size(H, 2) 0 max(H)]);
xlabel("ND");
ylabel("Pixeles");
title("Histograma");

saveas(h, "../img/2/imagen_corte_0.01_histo.png", "png");

unloadLibs();
