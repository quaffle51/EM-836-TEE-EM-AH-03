function [C G w] = gwb1(n);
  C = [];
  G = [1 0 1:n-1; 0 1 ones(1,n-1)];

  for i= 0:n-1
    for j = 0:n-1
      C = [C; mod([i j]*G, n)];
    endfor
  endfor
  w = weights(C);
endfunction

function w = weights(C);
  w =[];
  for i = 1:size(C,1)
    count = 0;
    for j = 1:size(C,2)
      if C(i,j) > 0
        count++;
      endif
    endfor
    w = [w; count];
  endfor
endfunction

