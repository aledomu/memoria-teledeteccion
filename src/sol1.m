n = imread("../img/1/band8nir.png");
r = imread("../img/1/band4red.png");
g = imread("../img/1/band3green.png");
b = imread("../img/1/band2blue.png");

imgV(:, :, 1) = r;
imgV(:, :, 2) = g;
imgV(:, :, 3) = b;

imgF(:, :, 1) = n;
imgF(:, :, 2) = r;
imgF(:, :, 3) = g;

imwrite(imgV, "../img/1/colorVerdadero.png");
imwrite(imgF, "../img/1/colorFalso.png");
