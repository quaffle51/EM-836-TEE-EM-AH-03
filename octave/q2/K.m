function K();
  for m = 6:100
    # m is an integer
    rhs = 2^(m+2) - 7;
    r = roots([1 1 (2-2^m)]);
    printf("m=%d rhs=%d r1=%d r2=%d\n",m, rhs, r(1), r(2));
  endfor
endfunction
