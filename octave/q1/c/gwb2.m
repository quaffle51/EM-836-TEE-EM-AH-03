function gwb2(p,q);
 for i = 0:p-1
   for j = 0:p*q-1
     for lambda = 1:p*q-1
       if (lambda*i+j-p*q) == 0
         printf("i=%d j=%d lambda=%d\n",i,j,lambda);
       endif
     endfor
   endfor
 endfor
endfunction

  