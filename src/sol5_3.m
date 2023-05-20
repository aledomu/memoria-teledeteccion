loadLibs();

img = imread("../img/r.png");

imgSeudo = seudo(30, img);

imwrite(imgSeudo, "../img/5/imagen_seudo.png");

unloadLibs();
