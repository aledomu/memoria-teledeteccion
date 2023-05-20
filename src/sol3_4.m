loadLibs();

img = imread("../img/r.png");

imgMedianFilterBorder = filtroMedianaBorde(img);

imwrite(imgMedianFilterBorder, "../img/3/imagen_median_filter_border.png");

unloadLibs();
