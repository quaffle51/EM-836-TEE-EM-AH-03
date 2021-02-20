function P();
  for m = 6:1000
    printf("m=%d %d\n", m, mod(2^(m+2) - 7,16));
  endfor
endfunction
