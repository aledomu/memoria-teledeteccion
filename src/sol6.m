loadLibs();

swir = imread("../img/swir.png");
nir = imread("../img/nir.png");
r = imread("../img/r.png");
g = imread("../img/g.png");
b = imread("../img/b.png");
img = cat(3, swir, nir, r, g, b);

[imgIsodata3, iters3, cent3] = isodata(img, 3);

disp(["3 categorias: se han realizado " num2str(iters3) " iteraciones. Centroides:"]);
cent3'

imwrite(imgIsodata3, "../img/6/imagen_isodata3.png");

[imgIsodata5, iters5, cent5] = isodata(img, 5);

disp(["5 categorias: se han realizado " num2str(iters5) " iteraciones. Centroides:"]);
cent5'

imwrite(imgIsodata5, "../img/6/imagen_isodata5.png");

unloadLibs();
