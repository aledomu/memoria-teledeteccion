n = imread("../img/nir.png");
r = imread("../img/r.png");
g = imread("../img/g.png");
b = imread("../img/b.png");

imgV(:, :, 1) = r;
imgV(:, :, 2) = g;
imgV(:, :, 3) = b;

imgF(:, :, 1) = n;
imgF(:, :, 2) = r;
imgF(:, :, 3) = g;

imwrite(imgV, "../img/1/colorVerdadero.png");
imwrite(imgF, "../img/1/colorFalso.png");
