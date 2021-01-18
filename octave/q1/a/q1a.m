function ab = q1a
  a = [0 1 2; 1 2 0];
  b = [0 1 2; 2 0 1];
  c = [1 2 0; 0 1 2];
  d = [0 1 2; 2 0 1];
  e = [2 0 1; 0 1 2];
  f = [2 0 1; 1 2 0];
  
  ab = zeros(3);
  
  for i = 1:3
    for j = 1:3
      ab(i,j) = (a(i,j), b(i,j));
    endfor
  endfor
endfunction
