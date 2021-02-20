function B();
  G = [1 1 1 1 1 1 1 1;
       0 1 0 1 0 1 0 1;
       0 0 1 1 0 0 1 1;
       0 0 0 0 1 1 1 1
      ];
      
  for i =0:1
    for j=0:1
      for k=0:1
        for l=0:1
          disp(mod([i j k l]*G,2));
        endfor
      endfor
    endfor
  endfor
endfunction
