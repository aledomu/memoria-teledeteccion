loadLibs();

img = imread("../img/r.png");

imgMedianFilter = filtroMediana(img);

imwrite(imgMedianFilter, "../img/3/imagen_median_filter.png");

unloadLibs();
