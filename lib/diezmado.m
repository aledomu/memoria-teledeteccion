function imgEscalada = diezmado(R, img)
  steps = 0;
  switch (R)
    case 0.5
      steps= 2;
    case 0.67
      steps = 3;
    case 0.75
      steps = 4;
    otherwise
      error("R solo puede ser 0.5, 0.67 o 0.75");
  endswitch

  imgEscalada = img(1:steps:end, 1:steps:end);
end
