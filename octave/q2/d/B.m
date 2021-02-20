function X = B(n, K)
  a = n - K;
  H = C(a);
  X = [];
  X = [X;zeros(1, a)];
  for i = 1:n
    X = [X; H(i,:)];
    for j = 1:n-1
      for k = j+1:n
        printf("i=%d j=%d k=%d\n", i, j, k);
        X = [X;mod(H(j,:) + H(k,:),2)];
      end
    end
   end
end
