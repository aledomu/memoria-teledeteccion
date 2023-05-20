loadLibs();

nir = imread("../img/nir.png");
r = imread("../img/r.png");

imgDensity = densi(ndvi(nir, r));

imwrite(imgDensity, "../img/5/imagen_density.png");

unloadLibs();
