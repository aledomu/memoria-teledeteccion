loadLibs();

r = imread("../img/r.png");
g = imread("../img/g.png");
b = imread("../img/b.png");

imgRGB = falso(r, g, b);

imwrite(imgRGB, "../img/5/imagen_rgb.png");

unloadLibs();
