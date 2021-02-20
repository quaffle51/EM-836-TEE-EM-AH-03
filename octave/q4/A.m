function A;
  h = [0 1 4 5 6 9];
  for i = 0:14
    v = mod(i*h,15);
    printf("%2d %2d %2d %2d %2d %2d\n", v(1),v(2),v(3),v(4),v(5),v(6));
  endfor
endfunction
