function M()
  for m=3:50
    printf("m=%d %d\n", m, mod(2^(m+2) - 7,16));
  endfor
endfunction
