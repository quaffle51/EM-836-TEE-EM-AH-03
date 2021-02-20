x = var('x');
g = 1 + x + x^2 + x^3 + x^6;
h = 1 + x + x^4 + x^5 + x^6 + x^9;
f = x^(15) - 1;
#R.<x>=PolynomialRing(GF(2),1,order='neglex');
for i in range(0,15):
	l =  expand(x^i*(1+x)*h);
	print(l);
