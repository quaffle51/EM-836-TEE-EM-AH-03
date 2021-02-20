function table_rows = slepian_table(cosets, codewords);
  no_cols = size(codewords,1);
  n = size(codewords(1,:),2);
  table_rows = [""];
  coset_strs = [""];
  for i = 1:size(cosets,1)
    coset_strs = [coset_strs; dec2bin(sum(cosets(i,:) .* flip([2.^(0:n-1)])),n)];
  endfor
  for i = 0:size(cosets,1)/size(codewords,1)-1
    row = [""];
    for j = 0:size(codewords,1)-1
      printf("%2d*%2d + %2d + 1 =%3d\n", i, size(codewords,1), j, i*size(codewords,1) + j + 1);
      row = [row " " coset_strs(i*size(codewords,1) + j + 1,:)];
    endfor
    table_rows = [table_rows; row];
  endfor
endfunction