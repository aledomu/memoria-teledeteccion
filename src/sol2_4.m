loadLibs();

img = imread("../img/r.png");

imgEcual = ecual(img);

imwrite(imgEcual, "../img/2/imagen_ecual.png");

H = histo(imgEcual);

h = bar(H);
axis([0 size(H, 2) 0 max(H)]);
xlabel("ND");
ylabel("Pixeles");
title("Histograma");

saveas(h, "../img/2/imagen_ecual_histo.png", "png");

unloadLibs();
