loadLibs();

img = imread("../img/5/imagen2.png");

imgSeudo = seudo(50, img);

imwrite(imgSeudo, "../img/5/imagen2_seudo.png");

unloadLibs();
