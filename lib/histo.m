function h = histo(img)
  h = zeros(1, 255);
  for p = img(:)'
    if (p > 0)
      h(p) += 1;
    endif
  endfor
end
