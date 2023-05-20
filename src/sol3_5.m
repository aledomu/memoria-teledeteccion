loadLibs();

img = imread("../img/r.png");

imgFilterSobel = filtroSobel(img);

imwrite(imgFilterSobel, "../img/3/imagen_filter_sobel.png");

unloadLibs();
