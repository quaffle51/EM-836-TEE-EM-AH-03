function q1bi(p, q);
  if and(isprime(p), q > 1)
    pf = factor(q);
    okay = true;
    for i = 1:size(pf,2)
      if pf(i) < p
        okay = false;
        printf("The prime factors of q must not be less than p\n");
        break;
      endif
    endfor
    if okay
      n = p*q;
      for lambda = 1:n-1
        printf("lambda = %d\n", lambda);
        A = zeros(p,n);
        for i = 0:p-1
          for j = 0:n-1
            A(i+1,j+1) = mod(lambda * i + j, n);
          endfor
        endfor
        disp(A);
      endfor
    endif
  else
    printf("Please check values of p and q\n");
  endif
  
endfunction
