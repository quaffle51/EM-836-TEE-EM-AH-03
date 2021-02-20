function [lhs rhs tf] = D(q, n, k, d);
  lhs = 0;
  for i = 0:d-2
    lhs = lhs + (q-1)^i*binom(n-1,i);
  endfor
  rhs = q^(n-k);
  tf = lhs < rhs;
endfunction
