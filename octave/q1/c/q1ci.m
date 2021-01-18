function [A, C, d]  = q1ci(p, q);

  n = p*q;
  A = a_lambda(p, q); 
  a_sub = 1:p:size(A,1);
  d=0;
  C = [];

  for i = 0:p-1 #0 to p-1
    for j = 0:p*q-1 # 0 to n-1
      index = sprintf("%d %d", i, j);
      S="";
      row = [i j];
      for lambda = 1:p*q-1 #1 to n-1
        a = A(a_sub(lambda):a_sub(lambda)+p-1,:);
        row = [row a(i+1,j+1)];
      endfor
      C = [C; row];
    endfor
  endfor
  d = dist(C);
endfunction

function A = a_lambda(p, q);
  A = [];
  a_sub = 1;
  for lambda = 1:p*q-1
%%    disp(A_lambda(p, q, lambda));
    A = [A; A_lambda(p, q, lambda)];
  endfor
endfunction


function A = A_lambda(p, q, lambda);
  n = p*q;
  A = zeros(p,n);
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
      for i = 0:p-1
        for j = 0:n-1
          A(i+1,j+1) = mod(mod(lambda * i,n) + j, n);
        endfor
      endfor
    endif
  else
    printf("Please check values of p and q\n");
  endif
endfunction

function d = dist(C);
  
  nr = size(C,1);
  nc = size(C,2); 
  d = nc;

  for i = 1:nr-1
    for j = i+1:nr
      count = 0;
      for k = 1:nc
        if C(i,k) != C(j,k)
          count++;
        endif
      endfor
      if count < d
        d = count;
      endif
    endfor
  endfor
endfunction
