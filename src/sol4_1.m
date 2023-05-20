loadLibs();

img = imread("../img/r.png");

imgDownscaled = diezmado(0.5, img);

imwrite(imgDownscaled, "../img/4/imagen_downscaled.png");

unloadLibs();
