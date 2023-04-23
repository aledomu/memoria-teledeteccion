function imgFiltered = filtro(kernel, img)
  imgFiltered = uint8(conv2(img, kernel, "same"));
  imgFiltered(img == 0) = 0;
end
