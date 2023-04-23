loadLibs();

img = imread("../img/3/imagen.png");

imgMedianFilter = filtroMediana(img);

imwrite(imgMedianFilter, "../img/3/imagen_median_filter.png");

unloadLibs();
