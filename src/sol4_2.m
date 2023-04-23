loadLibs();

img = imread("../img/4/imagen.png");

[Y, X] = size(img);

imgUpscaledBilinearFilter = amplia(diezmado(0.5, img))(1:Y, 1:X);

imwrite(imgUpscaledBilinearFilter, "../img/4/imagen_upscale_bilinear_filter.png");

disp(["El PSNR es ", num2str(mipsnr(img, imgUpscaledBilinearFilter)) ]);

unloadLibs();
