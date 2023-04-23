function imgCorte = corte(rate, img)
  p = prod(size(img));
  pLimitL = rate * p;
  pLimitR = p - pLimitL;

  hAccum = cumsum(histc(img(:)', 1:255));
  % Los elementos de cada extremo contendrán la última barra a cortar de cada lado
  validIdx = find(hAccum >= pLimitL & hAccum <= pLimitR);
  m = validIdx(2);
  M = validIdx(end - 1);

  imgCorte = expan(m, M, img);
end
