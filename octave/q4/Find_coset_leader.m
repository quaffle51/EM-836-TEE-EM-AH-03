function coset_leader = Find_coset_leader(vector_space);
  min_wt = size(vector_space(1,:),2);
  coset_leader = [];
  for i = 1:size(vector_space,1)
    wt = sum(vector_space(i,:));
    printf("wt=%d\n",wt);
    if wt < min_wt;
      min_wt = wt;
    endif
  endfor
  printf("min weight is %d\n",min_wt);
  for i = 1:size(vector_space,1)
    wt = sum(vector_space(i,:));
    if wt == min_wt
      coset_leader = vector_space(i,:);
      break;
    endif
  endfor
endfunction