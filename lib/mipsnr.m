function PSNR = mipsnr (a, b)

  a = double(a);
  b = double(b);
  MSE = sum(sum((a - b) .^ 2)) / prod(size(a));
  PSNR = 10 * log10((255 ^ 2) / MSE);

endfunction
