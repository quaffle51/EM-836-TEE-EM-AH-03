function N()
  for n = 6:2000
    m = log2((4*n^2 + 4*90 +1) + 7) - 2;
    r = (sqrt(2^(m+2) - 7) + 1)/2;
    if floor(m) == ceil(m)
      printf("n=%4d m=%9d r=%d\n", n, m, r);
    endif
  endfor
endfunction
