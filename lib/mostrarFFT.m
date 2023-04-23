function mostrarFFT(img)
  FFT = fft2(img);
  [Y, X] = size(FFT);
  modFFT = abs(FFT);
  phaseFFT = angle(FFT);

  subplot(1, 2, 1);

  mesh(modFFT);
  axis([ 1 X 1 Y 0 max(max(modFFT)) ]);

  subplot(1, 2, 2);

  unwrappedPhaseFFT = unwrap(phaseFFT);
  mesh(unwrappedPhaseFFT);
  axis([ 1 X 1 Y min(min(phaseFFT)) max(max(unwrappedPhaseFFT)) ]);
end
