loadLibs();

img = imread("../img/3/imagen.png");

imgMeanFilterNormalized = filtro2(ones(3, 3), img);

imwrite(imgMeanFilterNormalized, "../img/3/imagen_mean_filter_normalized.png");

unloadLibs();
