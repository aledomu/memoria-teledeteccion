function imgFiltered = filtroMediana(img)
  [Y, X] = size(img);
  indicesToSelect = imgWindowedIndices(3, Y, X);

  imgFiltered = reshape(median(img(indicesToSelect)), Y, X);
end
