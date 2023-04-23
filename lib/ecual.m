function imgEcual = ecual(img)
  P = size(img(img > 0), 1);
  FE = 255 / P;
  hWeightedAcc = cumsum(histo(img)) * FE;
  imgEcual = uint8([ 0 hWeightedAcc ](img + 1));
end
