function imgColoured = seudo(cutValue, img)
  imgColoured = falso(
    255 * (img >= cutValue),
    zeros(size(img)),
    255 * (img < cutValue)
  );
end
