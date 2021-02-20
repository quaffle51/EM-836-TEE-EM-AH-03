function [cols f_frame] = H;
  % This is relevant to TMA03 q4(b)(ii)
  c1 = [1 1 0 0 1 1 0];
  c2 = [1 0 0 1 1 0 0];
  c3 = [0 0 1 0 1 1 0];
  c4 = [0 1 1 1 1 0 0];
  c5 = [1 1 1 1 1 1 1];
  c6 = [0 0 0 1 1 1 1];
  c = [c1;c2;c3;c4;c5;c6];
  cols = [];
  for i = 1:size(c1,2)
    col = [];
    for j = 1:6
      col = [col c(j,i)];
    endfor
    cols = [cols; col];
  endfor

  
  f_frame = [];
  f_frame = [f_frame; zeros(1, 0) cols(1,:) zeros(1,12)];
  f_frame = [f_frame; zeros(1, 2) cols(2,:) zeros(1,10)];
  f_frame = [f_frame; zeros(1, 4) cols(3,:) zeros(1, 8)];
  f_frame = [f_frame; zeros(1, 6) cols(4,:) zeros(1, 6)];
  f_frame = [f_frame; zeros(1, 8) cols(5,:) zeros(1, 4)];
  f_frame = [f_frame; zeros(1,10) cols(6,:) zeros(1, 2)];
  f_frame = [f_frame; zeros(1,12) cols(7,:) zeros(1, 0)];
  
endfunction
