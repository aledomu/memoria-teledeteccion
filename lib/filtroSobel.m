function imgFiltered = filtroSobel(img)
  kernelSobelX = [ 1 2 1; 0 0 0; -1 -2 -1 ];
  kernelSobelY = rot90(kernelSobelX, -1);

  imgSobelX = conv2(img, kernelSobelX, "same");
  imgSobelY = conv2(img, kernelSobelY, "same");
  imgFiltered = uint8(sqrt((imgSobelX .^ 2) + (imgSobelY .^ 2)));
end
