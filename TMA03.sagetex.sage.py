## -*- encoding: utf-8 -*-


# This file was *autogenerated* from the file TMA03.sagetex.sage
from sage.all_cmdline import *   # import sage library

_sage_const_28 = Integer(28); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_2 = Integer(2); _sage_const_3 = Integer(3); _sage_const_4 = Integer(4); _sage_const_5 = Integer(5); _sage_const_6 = Integer(6); _sage_const_34 = Integer(34); _sage_const_36 = Integer(36)## This file (TMA03.sagetex.sage) was *autogenerated* from TMA03.tex with sagetex.sty version 2020/08/12 v3.5.
import sagetex
_st_ = sagetex.SageTeXProcessor('TMA03', version='2020/08/12 v3.5', version_check=True)
_st_.current_tex_line = _sage_const_28 
_st_.blockbegin()
try:
 m=[(_sage_const_1 , _sage_const_0 , _sage_const_1 , _sage_const_2 , _sage_const_3 , _sage_const_4 , _sage_const_5 ),
    (_sage_const_0 , _sage_const_1 , _sage_const_1 , _sage_const_1 , _sage_const_1 , _sage_const_1 , _sage_const_1 )];
 G = matrix(Integers(_sage_const_6 ),_sage_const_2 , m);
 v = matrix([_sage_const_1 , _sage_const_5 ]);
 cw = v*G;
except:
 _st_.goboom(_sage_const_34 )
_st_.blockend()
try:
 _st_.current_tex_line = _sage_const_36 
 _st_.inline(_sage_const_0 , latex(latex(v)))
except:
 _st_.goboom(_sage_const_36 )
try:
 _st_.current_tex_line = _sage_const_36 
 _st_.inline(_sage_const_1 , latex(latex(G)))
except:
 _st_.goboom(_sage_const_36 )
try:
 _st_.current_tex_line = _sage_const_36 
 _st_.inline(_sage_const_2 , latex(cw))
except:
 _st_.goboom(_sage_const_36 )
_st_.endofdoc()
