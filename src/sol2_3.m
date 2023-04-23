loadLibs();

img = imread("../img/2/imagen.png");

imgCorte = corte(0.01, img);

imwrite(imgCorte, "../img/2/imagen_corte_0.01.png");

unloadLibs();
