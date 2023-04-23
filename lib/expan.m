function imgExpan = expan(m, M, img)
  imgExpan = uint8(((double(img) - m) .* 254 ./ (M - m)) + 1);
end
