loadLibs();

img = imread("../img/r.png");

imgEcual = ecual(img);

imwrite(imgEcual, "../img/2/imagen_ecual.png");

unloadLibs();
