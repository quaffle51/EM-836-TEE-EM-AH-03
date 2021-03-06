## -*- encoding: utf-8 -*-
## This file (TMA03.sagetex.sage) was *autogenerated* from TMA03.tex with sagetex.sty version 2020/08/12 v3.5.
import sagetex
_st_ = sagetex.SageTeXProcessor('TMA03', version='2020/08/12 v3.5', version_check=True)
_st_.current_tex_line = 28
_st_.blockbegin()
try:
 m=[(1, 0, 1, 2, 3, 4, 5),
    (0, 1, 1, 1, 1, 1, 1)];
 G = matrix(Integers(6),2, m);
 v = matrix([1, 5]);
 cw = v*G;
except:
 _st_.goboom(34)
_st_.blockend()
try:
 _st_.current_tex_line = 36
 _st_.inline(0, latex(latex(v)))
except:
 _st_.goboom(36)
try:
 _st_.current_tex_line = 36
 _st_.inline(1, latex(latex(G)))
except:
 _st_.goboom(36)
try:
 _st_.current_tex_line = 36
 _st_.inline(2, latex(cw))
except:
 _st_.goboom(36)
_st_.current_tex_line = 2
_st_.blockbegin()
try:
 x = SR.var('x');
 g = 1 + x + x^2 + x^3 + x^6;
 h = 1 + x + x^4 + x^5 + x^6 + x^9;
 f = x^15 - 1;
 R.<x>=PolynomialRing(ZZ,1,order='neglex');
 l = R(g*h);
 R.<x>=PolynomialRing(GF(2),1,order='neglex');
 L = R(g*h);
except:
 _st_.goboom(11)
_st_.blockend()
try:
 _st_.current_tex_line = 12
 _st_.inline(3, latex(R(g)))
except:
 _st_.goboom(12)
try:
 _st_.current_tex_line = 12
 _st_.inline(4, latex(R(h)))
except:
 _st_.goboom(12)
try:
 _st_.current_tex_line = 18
 _st_.inline(5, latex(R(h)))
except:
 _st_.goboom(18)
try:
 _st_.current_tex_line = 20
 _st_.inline(6, latex(l))
except:
 _st_.goboom(20)
try:
 _st_.current_tex_line = 22
 _st_.inline(7, latex(L))
except:
 _st_.goboom(22)
try:
 _st_.current_tex_line = 39
 _st_.inline(8, latex(1+15+14+13+13))
except:
 _st_.goboom(39)
_st_.current_tex_line = 82
_st_.blockbegin()
try:
 H= Matrix(GF(2),[
    [1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0],
    [0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0],
    [0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1]
 ]);
 r = Matrix(GF(2),[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1]);
except:
 _st_.goboom(92)
_st_.blockend()
try:
 _st_.current_tex_line = 105
 _st_.inline(9, latex(15-6))
except:
 _st_.goboom(105)
try:
 _st_.current_tex_line = 105
 _st_.inline(10, latex(2^6))
except:
 _st_.goboom(105)
try:
 _st_.current_tex_line = 120
 _st_.inline(11, latex(2^6))
except:
 _st_.goboom(120)
try:
 _st_.current_tex_line = 68
 _st_.inline(12, latex(1*(2*7+1)))
except:
 _st_.goboom(68)
_st_.endofdoc()
