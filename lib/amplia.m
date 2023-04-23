function imgEscalada = amplia(img)
  img2 = conv2(repelem(img, 2, 1), 0.5 * ones(2, 1), "same");
  img2(end, :) = img2(end-1, :);
  img3 = conv2(repelem(img2, 1, 2), 0.5 * ones(1, 2), "same");
  img3(:, end) = img3(:, end-1);
  imgEscalada = uint8(img3);
end
