loadLibs();

img = imread("../img/r.png");

H = histo(img);

h = bar(H);
axis([0 size(H, 2) 0 max(H)]);
xlabel("ND");
ylabel("Pixeles");
title("Histograma");

saveas(h, "../img/2/r_histo.png", "png");

unloadLibs();
