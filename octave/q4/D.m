function [H a]=D;
  n = 15;
  k = 9;
  h = [1   1   0   0   1   1   1   0   0   1];
  h0 = [flip(h) zeros(1,n-k-1)];
  H = [];
  for i = 0:n-k-1
    H = [H; shift(h0,i)];
  endfor
  disp(H);

  a = [];
  printf("x^k*h(x) (0<=k<=14)\n");
  v = [1, zeros(1,14)];
  for k = 0:14
    r = mod(shift(v,k) * H',2);
    w = flip(2.^[0:size(r,2)-1]);
    u = r.*w;
    a = [a; sum(r.*w)];
    if sum(r.*w) == 40
      printf("===================> k=%d ",k); disp(shift(v,k));
    endif
    printf("%4d = %2d %2d %2d %2d %2d %2d\n", sum(r.*w), r(1,1), r(1,2), r(1,3), r(1,4), r(1,5),  r(1,6));
  endfor
  
  printf("x^k(1+x)*h(x) (0<=k<=14)\n");
  v = [1 1, zeros(1,13)];
  for k = 0:13
    r = mod(shift(v,k) * H',2);
    disp(r);
    w = flip(2.^[0:size(r,2)-1]);
    u = r.*w;
    a = [a; sum(r.*w)];
    if sum(r.*w) == 40
      printf("===================> k=%d ",k); disp(shift(v,k));
    endif
    printf("%4d = %2d %2d %2d %2d %2d %2d\n", sum(r.*w), r(1,1), r(1,2), r(1,3), r(1,4), r(1,5),  r(1,6));
  endfor
 
  printf("x^k(1+x^2)*h(x) (0<=k<=14)\n");
  v = [1 0 1, zeros(1,12)];
  for k = 0:12
    r = mod(shift(v,k) * H',2);
    w = flip(2.^[0:size(r,2)-1]);
    u = r.*w;
    a = [a; sum(r.*w)];
    if sum(r.*w) == 40
      printf("===================> k=%d ",k); disp(shift(v,k));
    endif
    printf("%4d = %2d %2d %2d %2d %2d %2d\n", sum(r.*w), r(1,1), r(1,2), r(1,3), r(1,4), r(1,5),  r(1,6));
  endfor
  
  printf("x^k(1+x+x^2)*h(x) (0<=k<=14)\n");
  v = [1 1 1, zeros(1,12)];
  for k = 0:12
    r = mod(shift(v,k) * H',2);
    w = flip(2.^[0:size(r,2)-1]);
    u = r.*w;
    a = [a; sum(r.*w)];
    if sum(r.*w) == 40
      printf("===================> k=%d ",k); disp(shift(v,k));
    endif
    printf("%4d = %2d %2d %2d %2d %2d %2d\n", sum(r.*w), r(1,1), r(1,2), r(1,3), r(1,4), r(1,5),  r(1,6));
  endfor
endfunction
