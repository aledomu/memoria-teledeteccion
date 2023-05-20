loadLibs();

img = imread("../img/r.png");

imgExpan = expan(70, 130, img);

imwrite(imgExpan, "../img/2/imagen_expan_70_130.png");

H = histo(imgExpan);

h = bar(H);
axis([0 size(H, 2) 0 max(H)]);
xlabel("ND");
ylabel("Pixeles");
title("Histograma");

saveas(h, "../img/2/imagen_expan_70_130_histo.png", "png");

unloadLibs();
