loadLibs();

r = imread("../img/r.png");
g = imread("../img/g.png");
b = imread("../img/b.png");
img = falso(r, g, b);

imgCorteHsv = cortehsv(img);

imwrite(imgCorteHsv, "../img/5/imagen_corte_hsv.png");

unloadLibs();
