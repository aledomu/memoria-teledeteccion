loadLibs();

swir = imread("../img/swir.png");
nir = imread("../img/nir.png");
r = imread("../img/r.png");
g = imread("../img/g.png");
b = imread("../img/b.png");
img = cat(3, swir, nir, r, g, b);

imgIsodata = isodata(img, 5);

imwrite(imgIsodata, "../img/6/imagen_isodata.png");

unloadLibs();
