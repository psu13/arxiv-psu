% tmn-15.mp -- do not edit, generated automatically by EPFLcombined.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__l1, __l2);
vright (__r1, __r2);
vvertex ("d.sh=cross,d.filled=full,d.si=.20w,label=$ $,l.a=90,l.d=.001w", __c21);
vconnect ("dbl_wiggly,label=$ h_{\m \n }$,tension=0.0001,label.side=right", __c1, __c22);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __l1, __c1);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __c1, __r1);
vconnect ("plain,label=$ $,tension=2,label.side=left", __l2, __c21);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c21, __c22);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c22, __r2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
