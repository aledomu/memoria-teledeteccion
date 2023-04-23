loadLibs();

img = imread("../img/2/imagen.png");

imgExpan = expan(70, 130, img);

imwrite(imgExpan, "../img/2/imagen_expan_70_130.png");

unloadLibs();
