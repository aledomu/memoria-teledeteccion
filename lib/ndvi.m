function imgNdvi = ndvi(nir, r)
  indices = (double(nir - r) ./ double(nir + r)) + 1;
  % Se multiplica por 128 porque es lo mismo que 254 / 2, dado que el rango es [0, 2]
  imgNdvi = uint8(indices * 128) + 1;
  imgNdvi(nir == 0 | r == 0) = 0;
end
