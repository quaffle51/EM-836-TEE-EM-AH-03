function O()
  for j = 0:15
    for m=6:100
      v =2^(m+2)-7;
      if mod(v,16)==j
        printf("j=%d m=%d v=%d\ %d\n",j, m,v, sqrt(v));
      endif
    endfor
  endfor
endfunction
