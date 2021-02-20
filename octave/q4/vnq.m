function V = vnq(n);
  
  %% The vector space V(n,2)
  V = [];
  for i=0:2^n-1
    b = dec2bin(i,n);
    v = [];
    for j = 1:size(b,2)
      v = [v str2num(b(j))];
    endfor
    V = [V; v];
  endfor
  
endfunction