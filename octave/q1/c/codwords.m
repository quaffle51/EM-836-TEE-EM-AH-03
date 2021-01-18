function C = codwords(p,q);
  C = [];
      
  okay = true;

  if and(isprime(p), q > 1)
    pf = factor(q);
    for i = 1:size(pf,2)
      if pf(i) < p
        okay = false;
        printf("The prime factors of q must not be less than p\n");
        break;
      endif
    endfor
    if okay
      n = p*q;
      for i = 0:p-1
        for j = 0:n-1
          row = [i j];
    %%      printf("i=%d j=%d\n",i,j);
          for lambda = 1:n-1
    %%        printf("\tlambda=%d ", lambda);
            a = mod(lambda*i + j,n);
            row = [row a];
          endfor
    %%      disp(row);
    %%      printf("\n");
          C = [C; row];
        endfor
      endfor
    endif 
  else
    printf("Please check values of p (=%d) and q (=%d)\n", p, q);
  endif

endfunction
