function imgEscalada = ampliafft(R, img)
  if (R <= 1)
    error("R tiene que ser mayor que 1");
  endif

  [Y, X] = size(img);
  fftImgEscalada = zeros(round(R * [ Y X ]));
  fftImgEscalada([(1:floor(Y/2)) (end-ceil(Y/2)+1:end)], [(1:floor(X/2)) (end-ceil(X/2)+1:end)]) = fft2(img);

  imgEscalada= uint8(real(ifft2(fftImgEscalada)) * R^2);
  imgEscalada(:, end) = imgEscalada(:, end-1);
  imgEscalada(end, :) = imgEscalada(end-1, :);
end
