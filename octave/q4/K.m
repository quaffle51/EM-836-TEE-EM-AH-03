function [M C1 C2 messages codewords interleaving D transmit] = K;
  % C1 is the code RM(1,3) which is a binary linear [8, 4, 4]-code
  G1 = [1 1 1 1 1 1 1 1;
        0 1 0 1 0 1 0 1;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1
       ];
       
  % C2 is the code Ham(3,2) which is a binary linear [7, 4 ,3]-code
  G2 = [1 0 0 0 0 1 1;
        0 1 0 0 1 0 1;
        0 0 1 0 1 1 0;
        0 0 0 1 1 1 1
       ];
       
  C1 = [];
  C2 = [];
  M = [];
  for i = 0:1
    for j = 0:1
      for k = 0:1
        for l = 0:1
          m = [i j k l];
          M = [M;m];
          C1 = [C1; mod(m*G1,2)];
          C2 = [C2; mod(m*G2,2)];
        endfor
      endfor
    endfor
  endfor
  m1 = M( 5,:);
  m2 = M(11,:);
  m3 = M(13,:);
  m4 = M( 2,:);
  messages = [m1; m2; m3; m4];
  codewords = [];
  codewords = [codewords; mod(m1*G1,2)];
  codewords = [codewords; mod(m2*G1,2)];
  codewords = [codewords; mod(m3*G1,2)];
  codewords = [codewords; mod(m4*G1,2)];
  interleaving = [];
  for i = 1:8
    interleaving = [interleaving; codewords(:,i)'];
  endfor
  
  D1 = [];
  D2 = [];
  for i = 1:3 % we can only interleave six of the eight codewords as we don't have access to m5, m6 m7 and m8.
    D1 = [D1; mod(interleaving(i,:)*G2,2)];
  endfor
  
  for i = 4:6 % we can only interleave six of the eight codewords as we don't have access to m5, m6 m7 and m8.
    D2 = [D2; mod(interleaving(i,:)*G2,2)];
  endfor
  D = [D1; D2];
  transmit = [];
  for i = 1:7
    transmit = [transmit; D1(:,i)'];
  endfor
  for i = 1:7
    transmit = [transmit; D2(:,i)'];
  endfor
  
endfunction
