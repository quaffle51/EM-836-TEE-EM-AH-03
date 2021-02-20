function [c d m] = q4c;
  G2 = [1 1 1 1 1 1 1 1;
        0 1 0 1 0 1 0 1;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1
       ];
       
  G1 = [1 1 1 1 1 1 1];
  
  m  = [1 0 1 1  0 1 1 0   0 0 0 0];
  c  = [];
  d  = [];
  for i = 1:size(m,2)
    c = [c; mod(m(1,i).*G1,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([1:4],i)' * G2,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([5:8],i)' * G2,2)];
  endfor
  for i = 1:7
  	d = [d; mod(c([9:12],i)' * G2,2)];
  endfor

endfunction

