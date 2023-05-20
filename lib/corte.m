function [imgCorte, m, M] = corte(rate, img)
  p = prod(size(img));
  pLimitL = rate * p;
  pLimitR = p - pLimitL;

  hAccum = cumsum(histo(img));
  % Los elementos de cada extremo contendran la ultima barra a cortar de cada lado
  validIdx = find(hAccum >= pLimitL & hAccum <= pLimitR);
  m = validIdx(2);
  M = validIdx(end - 1);

  imgCorte = expan(m, M, img);
end
