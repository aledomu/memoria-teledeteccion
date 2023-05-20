function imgColoured = seudo(cutValue, img)
  cut = img >= cutValue;
  imgColoured = falso(
    255 * cut,
    zeros(size(img)),
    255 * (~cut & img ~= 0)
  );
end
