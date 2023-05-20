loadLibs();

img = imread("../img/r.png");

imgMeanFilter = filtro(ones(3, 3), img);

imwrite(imgMeanFilter, "../img/3/imagen_mean_filter.png");

unloadLibs();
