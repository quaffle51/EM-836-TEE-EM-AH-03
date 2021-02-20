function count = A()
  count = 0;
  for i = 0:2^17
    if sum(bitget(i,17:-1:1)) >=4
      count++;
    endif
  endfor
endfunction
