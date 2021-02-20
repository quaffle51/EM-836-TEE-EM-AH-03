function [c1 c2] = J;
  G1 = [1 1 1 1 1 1 1];
  G2 = [1 1 1 1 1 1 1 1;
        0 1 0 1 0 1 0 1;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1];
        
  c1 = [0*G1;1*G1];
  c2 = [];
  for i = 0:1
    for j = 0:1
      for k = 0:1
        for l = 0:1
          c2 = [c2; mod([i j k l]*G2,2)];
        endfor
      endfor
    endfor
  endfor
    
endfunction
