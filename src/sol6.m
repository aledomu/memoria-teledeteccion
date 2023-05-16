loadLibs();

img1 = imread("../img/6/imagen1.png");
img2 = imread("../img/6/imagen2.png");
img3 = imread("../img/6/imagen3.png");
img4 = imread("../img/6/imagen4.png");
img5 = imread("../img/6/imagen5.png");
img = cat(3, img1, img2, img3, img4, img5);

imgIsodata = isodata(img, 5);

imwrite(imgIsodata, "../img/6/imagen_isodata.png");

unloadLibs();
