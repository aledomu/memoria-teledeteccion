loadLibs();

nir = imread("../img/nir.png");
r = imread("../img/r.png");

imgNdvi = ndvi(nir, r);

imwrite(imgNdvi, "../img/5/imagen_ndvi.png");

unloadLibs();
