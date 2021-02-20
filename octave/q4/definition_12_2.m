function [e c q] = definition_12_2;

  % see definition_12_2 Block 3 page 40.
  % we use a Ham(3,2)-code as an example which is equivalent to a [7,4,3]-code
  % first generate the vector space which will have 2^7 vectors
  e = [];

  for i=0:1
    for j=0:1
      for k=0:1
        for l=0:1
          for m=0:1
            for n=0:1
              for o=0:1
                v = [i j k l m n o];
                e = [e; v];
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
  
  % next generate the codewords - there are 2^4 of them
  c = [];
  % the generator matrix is
  G = [ 1 0 0 0 0 1 1;
        0 1 0 0 1 0 1;
        0 0 1 0 1 1 0;
        0 0 0 1 1 1 1
      ];

  for i=0:i
    for j=0:1
      for k=0:1
        for l=0:1
          v=[i j k l];
          c=[c;mod(v*G,2)];
        endfor
      endfor
    endfor
  endfor
  
  q = [];
  count_e = 0; % count of bur's in e with value <= l
  count_u = 0; % count of bur's in c+e with value > l
  for l = 1:size(c,2) % l is the burst length
    printf("burst length = %d\n", l);
    for i = 1:size(e,1)
      if bur(e(i,:)) <= l % for every vector e in V(7,2) with burst length <= l
        %disp(e(i,:));
        % every vector v in V(7,2) with burst length less than or equal to l
        count_e++; % the burst length of e is less than or equal to l
        count = 0;
        for j = 1:size(c,1);
          if sum(c(j,:)) != 0 % c is not the zero vector
            u = mod(c(j,:) .+ e(i,:),2); % c + e
            if bur(u) > l % if the burst length of c+e is greater than l FOR EVERY c
              count++;
            endif
          endif
        endfor
        if count == 15
          count_u++;
        endif
      endif
    endfor
    printf("There are %d vectors feom e with l<=%d and Of these vectors from e, %d of the bur(c+e) > %d. \n", count_e, l, count_u, l);
    if count_u == count_e
      printf("The code is %d burst error-correcting\n", l);
    else
      printf("The code is NOT %d burst error-correcting\n\n", l);
    endif
  endfor
endfunction

function l = bur(v);
  %% detemines the burst lengths
  %% e.g. bur(0010110) = 4; see Block 3 page 40
  s = sum(v);
  l=0;
  if s > 0
    f = find(v);
    l = f(1,size(f,2)) - f(1,1) + 1;
  endif
endfunction
