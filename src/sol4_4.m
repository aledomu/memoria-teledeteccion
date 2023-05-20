loadLibs();

img = imread("../img/r.png");

[Y, X] = size(img);

imgUpscaledFFT = ampliafft(2.0, diezmado(0.5, img))(1:Y, 1:X);

imwrite(imgUpscaledFFT, "../img/4/imagen_upscaled_fft.png");

disp([ "El PSNR es ", num2str(mipsnr(img, imgUpscaledFFT)) ]);

unloadLibs();
