function imgDensity = densi(img)
  img_ = double(img) * 16 / 255;
  s1 = img_ < 9;
  s2 = img_ >= 9 & img_ < 10;
  s3 = img_ >= 10 & img_ < 11;
  s4 = img_ >= 11 & img_ < 12;
  s5 = img_ >= 12 & img_ < 13;
  s6 = img_ >= 13 & img_ < 14;
  s7 = img_ >= 14 & img_ < 15;
  s8 = img_ >= 15;

  b = 0.25 * s1 + s2 + 0.5 * s3 + s8;
  g = 0.25 * s1 + 0.5 * s3 + s4 + 0.7 * s5 + 0.3 * s6 + s8;
  r = 0.25 * s1 + 0.3 * s5 + 0.7 * s6 + s7 + s8;

  imgDensity = uint8(falso(255 * r, 255 * g, 255 * b));
end
