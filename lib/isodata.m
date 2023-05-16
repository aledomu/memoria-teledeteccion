function imgResult = isodata(img, K)
  [F, C, B] = size(img);

  v = zeros(B, K);
  while any(v(:)' == 0)
    f = round(1 + rand(1, K) * (F - 1));
    c = round(1 + rand(1, K) * (C - 1));
    for k = 1:K
      v(:, k) = squeeze(img(f(k), c(k), :));
    end
  end

  img2 = zeros(F, C);
  maxD = sqrt((255 ^ 2) * K);
  dmin = ones(F, C) * maxD;
  A = reshape(img, [], B);

  for i = 1:100
    a = false;
    for k = 1:K
      dsum = zeros(F, C);
      for b = 1:B
        dsum += (img(:, :, b) - v(b, k)) .^ 2;
      end
      d = sqrt(dsum);
      t = d < dmin;
      a |= any(t(:)');
      img2(t) = k;
      dmin = min(dmin, d);
    end

    % MOVER LOS CENTROS
    if a
      for k = 1:K
        v(:, k) = mean(A(img2(:, :) == k, :));
      end
    else
      break
    end
  end

  imgHsv = img2 / max(img2(:)');
  imgHsv(:, :, 2) = 1;
  imgHsv(:, :, 3) = all(permute(img ~= 0, [3 1 2])); % NDs validos
  imgResult = uint8(hsv2rgb(imgHsv) * 255);
end
