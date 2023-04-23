loadLibs();

img = imread("../img/3/imagen.png");

imgFilterSobel = filtroSobel(img);

imwrite(imgFilterSobel, "../img/3/imagen_filter_sobel.png");

unloadLibs();
