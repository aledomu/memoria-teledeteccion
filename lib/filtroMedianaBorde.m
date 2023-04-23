function imgFiltered = filtroMedianaBorde(img)
  [Y, X] = size(img);
  indicesToSelect = imgWindowedIndices(3, Y, X);

  indicesWithoutCentralPixel= indicesToSelect([ 1:4 6:9 ], :, :);
  applyFilter = any(img == 0) | reshape(mean(img(indicesWithoutCentralPixel)), Y, X) - img > 63;

  imgFiltered = img;
  imgFiltered(applyFilter) = reshape(median(img(indicesToSelect)), Y, X)(applyFilter);
end
