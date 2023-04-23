loadLibs();

nir = imread("../img/5/imagen3_nir.png");
r = imread("../img/5/imagen3_r.png");

imgDensity = densi(ndvi(nir, r));

imwrite(imgDensity, "../img/5/imagen3_density.png");

unloadLibs();
