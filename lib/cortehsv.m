function imgTailCut = cortehsv(img)
  imgHsv = uint8(rgb2hsv(img) * 255);
  imgHsv(:, :, 3) = corte(0.3, imgHsv(:, :, 3));
  imgHsv(:, :, 2) = corte(0.35, imgHsv(:, :, 2));
  imgTailCut = hsv2rgb(imgHsv);
end
