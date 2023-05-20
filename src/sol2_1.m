loadLibs();

img = imread("../img/r.png");

h = histo(img);

bar(h);
axis([0 size(h, 2) 0 max(h)]);
xlabel("Banda");
ylabel("Numero de ocurrencias");
title("Histograma");

unloadLibs();
