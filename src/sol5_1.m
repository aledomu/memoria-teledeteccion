loadLibs();

r = imread("../img/5/imagen1_r.png");
g = imread("../img/5/imagen1_g.png");
b = imread("../img/5/imagen1_b.png");

imgRGB = falso(r, g, b);

imwrite(imgRGB, "../img/5/imagen1_rgb.png");

unloadLibs();
