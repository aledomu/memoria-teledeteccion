loadLibs();

img = imread("../img/2/imagen.png");

imgEcual = ecual(img);

imwrite(imgEcual, "../img/2/imagen_ecual.png");

unloadLibs();
