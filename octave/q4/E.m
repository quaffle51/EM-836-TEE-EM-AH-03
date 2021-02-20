function G=E;
  n = 15;
  r = 6;
  g = [1 1 1 1 0 0 1];
  g0 = [g zeros(1,15-size(g,2))];
  G = [];
  for i = 0:n-r-1
    G = [G; shift(g0,i)];
  endfor
  m = [1 0 1 0 1 0 1 0 0];
  c = m*G;
  printf("codeword = "); disp(m);
  
  h = [1   1   0   0   1   1   1   0   0   1   0   0   0   0   0];
  H = [h;shift(h,1);shift(h,2);shift(h,3);shift(h,4);shift(h,5)];
  printf("syndrome = "); disp(mod(c*H',2));
endfunction
