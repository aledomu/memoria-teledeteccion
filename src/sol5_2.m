loadLibs();

r = imread("../img/5/imagen1_r.png");
g = imread("../img/5/imagen1_g.png");
b = imread("../img/5/imagen1_b.png");
img = falso(r, g, b);

imgCorteHsv = cortehsv(img);

imwrite(imgCorteHsv, "../img/5/imagen1_corte_hsv.png");

unloadLibs();
