loadLibs();

nir = imread("../img/5/imagen3_nir.png");
r = imread("../img/5/imagen3_r.png");

imgNdvi = ndvi(nir, r);

imwrite(imgNdvi, "../img/5/imagen3_ndvi.png");

unloadLibs();
