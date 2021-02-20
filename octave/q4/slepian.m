%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Desc: Generate the Standard Array
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [c cosets vector_space standard_array_cw standard_array_bur] = slepian;

  % Generate the codewords
  %% [c s d count] = plotkin;
  c = codewords;
  
  % Generate the vector space
  vector_space = vnq(7);
  
  % first row of sepian table from which all other rows are obtained
  %% coset_1 = cell2mat(c);
  coset_1 = c;
  cosets = [coset_1];

  % remove codewords in coset_1 from vector_space
  vector_space = remove_coset_From_vector_space(vector_space, coset_1);
  
  # create the rest of the cosets
  while size(vector_space,1) != 0
    coset= create_coset(coset_1, vector_space);
    vector_space = remove_coset_From_vector_space(vector_space, coset);
    cosets = [cosets; coset];
    %printf("size of cosets is "); disp(size(cosets));
  endwhile

  [standard_array_cw standard_array_bur] = slepian_table(cosets, c);
   
endfunction

function vector_space = remove_coset_From_vector_space(vector_space, coset);
  % remove codewords in coset from vector_space
  %printf("size on entry = ");disp(size(vector_space));
  remove = [];
  for i = 1:size(coset,1)
    for j = 1:size(vector_space,1)
      if coset(i,:) == vector_space(j,:)
        remove = [remove j];
        break;
      endif
    endfor
  endfor
  # remove used vectors from vector_space
  vector_space(remove,:) = [];
endfunction

function coset = create_coset(coset_1, vector_space);
  coset = [];

  for i = 1:size(coset_1,1) % doesn't change
    v = mod(coset_1(i,:) + find_coset_leader(vector_space), 2); % doesn't change
    coset = [coset; v];
  endfor
endfunction

function V = vnq(n);
  %% The vector space V(n,2)
  V = [];
  for i=0:2^n-1
    b = dec2bin(i,n);
    v = [];
    for j = 1:size(b,2)
      v = [v str2num(b(j))];
    endfor
    %disp(v);
    V = [V; v];
  endfor
endfunction

function C = codewords;
  
  G= [1 0 0 0 0 1 1;
      0 1 0 0 1 0 1;
      0 0 1 0 1 1 0;
      0 0 0 1 1 1 1
     ];
     
  C = []; %% codewords
  for i = 0:1
    for j = 0:1
      for k = 0:1
        for l = 0:1
          v = [i j k l];
          c = mod(v * G,2);
          l = bur(c);
          C = [C;  c];
          %printf("l=%d\t", l); disp(mod(c,2));
        endfor
      endfor
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

function coset_leader = find_coset_leader(vector_space);
  min_wt = size(vector_space(1,:),2);
  coset_leader = [];
  for i = 1:size(vector_space,1)
    wt = sum(vector_space(i,:));
    %printf("wt=%d\n",wt);
    if wt < min_wt;
      min_wt = wt;
    endif
  endfor
  %printf("min weight is %d\n",min_wt);
  for i = 1:size(vector_space,1)
    wt = sum(vector_space(i,:));
    if wt == min_wt
      coset_leader = vector_space(i,:);
      break;
    endif
  endfor
endfunction

function [table_rows_cw table_rows_bur] = slepian_table(cosets, codewords);
  no_cols = size(codewords,1);
  n = size(codewords(1,:),2);
  table_rows_cw = [''];
  table_rows_bur = [];
  coset_strs = [''];
  for i = 1:size(cosets,1)
    coset_strs = [coset_strs; dec2bin(sum(cosets(i,:) .* flip([2.^(0:n-1)])),n)];
  endfor
  for i = 0:size(cosets,1)/size(codewords,1)-1
    row_cw = [''];
    row_bur =[];
    for j = 0:size(codewords,1)-1
      row_cw  = [row_cw ' '  coset_strs(i*size(codewords,1) + j + 1,:)];
      row_bur = [row_bur str2bur(coset_strs(i*size(codewords,1) + j + 1,:))];
    endfor
    table_rows_cw  = [table_rows_cw;  row_cw ];
    table_rows_bur = [table_rows_bur; row_bur];
  endfor
endfunction

function b = str2bur(c)
  b = [];
  for i = 1:size(c,2)
    b = [b str2double(c(i))];
  endfor
  b = bur(b);
endfunction





