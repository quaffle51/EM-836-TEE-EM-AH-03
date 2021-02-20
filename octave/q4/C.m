function r=C;
  h = [1 1 0 0 1 1 1 0 0 1 0 0 0 0 0];
  w = flip(2.^[0:14]);
  r = [];

  printf("x^k*h(x) (0<=k<=14)\n");
  for k = 0:14
    v = mod(shift(h,k),2);
    printf("%8d\n",mod(sum(w.*v),2^15-1));
    r = [r; sum(w.*v)];
  endfor
  printf("==========================\n\n");
  printf("x^k(1 + x)*h(x) (0<=k<=13)\n");
  for k = 0:13
    v = mod(shift(h,k) + shift(h,k+1),2);
    printf("%8d\n",mod(sum(w.*v),2^15-1));
    r = [r; sum(w.*v)];
  endfor
  printf("==========================\n\n");
  printf("x^k(1 + x^2)*h(x) (0<=k<=13)\n");
  for k = 0:12
    v = mod(shift(h,k) + shift(h,k+2),2);
    printf("%8d\n",mod(sum(w.*v),2^15-1));
    r = [r; sum(w.*v)];
  endfor 
  printf("==========================\n\n");
  printf("x^k(1 + x + x^2)*h(x) (0<=k<=13)\n");
  for k = 0:12
    v = mod(shift(h,k) + shift(h,k+1) + shift(h,k+2),2);
    printf("%8d\n",mod(sum(w.*v),2^15-1));
    r = [r; sum(w.*v)];
  endfor 
endfunction
