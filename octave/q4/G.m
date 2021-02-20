function [V C] = G;
  G= [1 0 0 0 0 1 1;
      0 1 0 0 1 0 1;
      0 0 1 0 1 1 0;
      0 0 0 1 1 1 1
     ];
     
  t = [0 0 1 0 1 1 0]; %% cf page 40 in Block 3 Course Notes
  
  printf("for the test vector l=%d\t",bur(t)); disp(t);
  
  C = []; %% codewords
  for i = 0:1
    for j = 0:1
      for k = 0:1
        for l = 0:1
          v = [i j k l];
          c = mod(v * G,2);
          l = bur(c);
          C = [C;  c];
          printf("l=%d\t", l); disp(mod(c,2));
        endfor
      endfor
    endfor
  endfor
  
  %% The vector space V(7,2)
  V = [];
  for i=0:127
    b = dec2bin(i,7);
    v = [];
    for j = 1:size(b,2)
      v = [v str2num(b(j))];
    endfor
    disp(v);
    V = [V; v];
  endfor
  
endfunction

function l = bur(c);
  s = sum(c);
  l=0;
  if s > 0
    f = find(c);
    l = f(1,size(f,2)) - f(1,1) + 1;
  endif
endfunction

