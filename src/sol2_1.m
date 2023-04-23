loadLibs();

img = imread("../img/2/imagen.png");

h = histo(img);

bar(h);
axis([0 size(h, 2) 0 max(h)]);
xlabel("Banda");
ylabel("Nº de ocurrencias");
title("Histograma");

unloadLibs();
