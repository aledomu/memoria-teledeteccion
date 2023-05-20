function h = histo(img)
  h = zeros(1, 255);
  for nd = 1:255
      h(nd) = sum(sum(img == nd));
  end
end
