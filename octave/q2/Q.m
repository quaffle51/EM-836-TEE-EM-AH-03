function Q();
  for a = 2:30
    for b = a+1:30
      c = mod( (2^(a+1) + 2^(b+1) - 1)^2 , 16);
      for m=6:58
        d = 2^(m+2) - 7;
        e = mod(d,16);
        if mod(d,16) != c
          lhs = (2^(a+1) + 2^(b+1) - 1)^2;
          rhs = 2^(m + 2) - 7;
          printf("a=%d b=%d lhs=%d rhs=%d mod=%d mod=%d m=%d\n", a, b, lhs, rhs, c,e, m);
          break;
        endif
      endfor
    endfor
  endfor
endfunction
