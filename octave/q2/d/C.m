function V = C(a);
  V = [];
  for i = 0:2^a-1
    V = [V;bitget(i,a:-1:1)];
  end
end
