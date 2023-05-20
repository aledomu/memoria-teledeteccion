loadLibs();

img = imread("../img/r.png");

imgDownscaled2 = diezmado(0.5, img);
imgDownscaled4 = diezmado(0.75, img);

imwrite(imgDownscaled2, "../img/4/imagen_downscaled_x2.png");
imwrite(imgDownscaled4, "../img/4/imagen_downscaled_x4.png");

unloadLibs();
