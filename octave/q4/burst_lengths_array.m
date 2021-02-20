function burst_array = burst_lengths_array(standard_array)
  burst_array = standard_array;
  for i = 1:size(standard_array,1)
    for j = 1:size(standard_array,2)
      disp(standard_array(i,j,:));
      burst_array(i,j,:) = bur(standard_array(i,j));
    endfor
  endfor
endfunction

function l = bur(c);
  %% detemines the burst lengths
  s = sum(c);
  l=0;
  if s > 0
    f = find(c);
    l = f(1,size(f,2)) - f(1,1) + 1;
  endif
endfunction