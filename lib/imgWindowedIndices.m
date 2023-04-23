% Esta es una función de utilidad para calcular los índices con los que
% generar una vista de ventana de cualquier matriz bidimensional.
% De esta manera se acelera la ejecución muchísimo en GNU Octave
% comparado al uso directo de bucles for.
function indices = imgWindowedIndices(radius, Y, X)
  radiusSquare = radius ^ 2;
  extraWidth = radius - 1;
  Y2 = Y + extraWidth;

  leftBorder = repelem(1, Y2);
  rightBorder = repelem(Y*X, Y2);
  withBorders = [ leftBorder ((0:Y:Y*(X-1)) + [1 (1:Y) Y]')(:)' rightBorder ];

  % Estos índices tienen en cuenta el borde duplicado por el desplazamiento en ventana
  bordersIdx = ((0:Y2:Y2*(X-1)) + (1:Y)')(:)';
  bordersIdxW = repelem(bordersIdx, radiusSquare);

  mask = ((0:Y2:Y2*extraWidth) + (0:extraWidth)')(:)';
  maskW = repmat(mask, 1, Y * X);

  idx= reshape(bordersIdxW + maskW, radiusSquare, Y, X);
  indices = withBorders(idx);
end
