function f = binom(n, k);
  f = int64(factorial(n)/(factorial(n-k)*factorial(k)));
endfunction
