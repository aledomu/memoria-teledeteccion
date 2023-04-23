function imgFiltered = filtro2(kernel, img)
  normalizedKernel = kernel ./ sum(sum(kernel));
  imgFiltered = filtro(normalizedKernel, img);
end
